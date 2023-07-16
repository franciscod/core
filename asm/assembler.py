from pprint import pprint

from lexer import lex, canon

import struct

def i_imm8(imm, labels=None):
    match imm:
        case int(n):
            pass
        case ('labelname', k):
            n = labels[k]
    return int(n) & 0xFF

def i_imm10(imm, labels=None):
    match imm:
        case int(n):
            pass
        case ('labelname', k):
            n = labels[k]
    return int(n) & 0x3FF

def i_r4(rx):
    return int(rx[1], 16)

def asm_store(imm10, r4a):
    return 0b11 << 14 | i_imm10(imm10) << 4 | i_r4(r4a)

def asm_load(imm10, r4a):
    return 0b10 << 14 | i_imm10(imm10) << 4 | i_r4(r4a)

def asm_r4_imm8(opcode, r4a, imm8, labels=None):
    return (opcode & 0x0F) << 12 | i_imm8(imm8, labels=labels) << 4 | i_r4(r4a)

def asm_subop_skip_r4_r4(opcode, subop, skip, r4x, r4y):
    return ((opcode & 0xF)  << 12 | 
            (subop & 0x7)   <<  9 | 
            (int(skip) & 1) <<  8 |
            i_r4(r4x)       <<  4 | 
            i_r4(r4y)       <<  0)

def asm_shift(is_left, is_logical, is_conditional, imm3, r4a):
    return (
          0b110 << 12            # Opcode
        | (0b110 | is_left) << 9 # Suboperation code (Left or right shift)
        | is_conditional << 8    # Is conditional?
        | is_logical << 7        # Logical or arithmetic shift
        | (imm3 & 0x7) << 4      # Shift amount
        | i_r4(r4a)              # Destination
    )

SETCC_OPERATIONS = {
    'zero': 0b000,
    'nor':  0b001,
    'xor':  0b010,
    'nand': 0b011,
    'and':  0b100,
    'xnor': 0b101,
    'or':   0b110,
    'one':  0b111,
}
SETCC_CONDITIONS = {
    'z': 0b0001,
    'v': 0b0010,
    'n': 0b0100,
    'c': 0b1000,
}

def asm_setcc(op, cond, is_conditional):
    return (
          0b0101 << 12              # Opcode
        | SETCC_OPERATIONS[op] << 9 # Suboperation code
        | is_conditional << 8       # Is conditional?
        | sum(SETCC_CONDITIONS[k] for k in cond) << 4 # Mask
        | sum(SETCC_CONDITIONS[k] for (k, v) in cond.items() if v) # Expected values
    )

def asm_ins(line, labels, is_conditional):
    match line:
        case 'storei', '[', imm10, ']', r4a:
            return asm_store(imm10, r4a)
        case 'loadi', r4a, '[', imm10, ']':
            return asm_load(imm10, r4a)

        case 'movi', r4a, imm8: 
            return asm_r4_imm8(0b0111, r4a, imm8, labels=labels)

        case 'srl', r4a, imm3: 
            return asm_shift(False, True, is_conditional, imm3, r4a)
        case 'sra', r4a, imm3: 
            return asm_shift(False, False, is_conditional, imm3, r4a)
        case 'sl', r4a, imm3: 
            return asm_shift(True, False, is_conditional, imm3, r4a)
        case 'cmp', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b101, is_conditional, r4b, r4a)
        case 'sub', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b100, is_conditional, r4b, r4a)
        case 'add', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b011, is_conditional, r4b, r4a)
        case 'xor', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b010, is_conditional, r4b, r4a)
        case 'or', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b001, is_conditional, r4b, r4a)
        case 'and', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b000, is_conditional, r4b, r4a)

        case 'setcc', str(op): 
            return asm_setcc(op, {}, is_conditional)
        case 'setcc', str(op), dict(cond): 
            return asm_setcc(op, cond, is_conditional)

        case 'storer', '[', r4b, ']', r4a: 
            return asm_subop_skip_r4_r4(0b0011, 0b000, is_conditional, r4b, r4a)
        case 'loadr', r4a, '[', r4b, ']':
            return asm_subop_skip_r4_r4(0b0010, 0b000, is_conditional, r4b, r4a)
        case 'xchg', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0001, 0b000, is_conditional, r4b, r4a)
        case 'movr', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0000, 0b000, is_conditional, r4b, r4a)

        case _:
            raise NotImplementedError(line)


def assemble(toklines):
    toklines = list(toklines)
    labels = {}
    words = [] # words

    offset = 0 # bytes
    for line in toklines:
        match line:
            case (('labeldef', label),):
                labels[label] = offset
            case (str(ins), *args,):
                offset += 1
            case _:
                raise NotImplementedError(line)

    offset = 0 # bytes
    for line in toklines:
        match line:
            case (('labeldef', label),):
                words.append((offset, None, line))
                continue
            case ('maybe', str(ins), *args,):
                words.append((offset, asm_ins((ins, *args), labels, True), line))
                offset += 1
            case (str(ins), *args,):
                words.append((offset, asm_ins((ins, *args), labels, False), line))
                offset += 1
            case _:
                raise NotImplementedError(line)

    for i, bits, line in words:
        pre = " " * 4
        if bits is None:
            sbits = "/" * 16
            pre = ""
        else:
            sbits = f"{bits:016b}"

        print(f"  {sbits}  // {i:03x} {pre} {' '.join(canon(t) for t in line)}")

if __name__ == "__main__":
    from sys import stdin
    program = stdin.read()
    assemble(lex(program))
