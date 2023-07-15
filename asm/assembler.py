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

def i_r4(rx):
    return int(rx[1], 16)

def asm_r4_imm8(opcode, r4a, imm8, labels=None):
    return (opcode & 0x0F) << 12 | i_imm8(imm8, labels=labels) << 4 | i_r4(r4a)

def asm_subop_skip_r4_r4(opcode, subop, skip, r4x, r4y):
    return ((opcode & 0xF)  << 12 | 
            (subop & 0x7)   <<  9 | 
            (int(skip) & 1) <<  8 |
            i_r4(r4x)       <<  4 | 
            i_r4(r4y)       <<  0)


def asm_ins(line, labels=None):
    match line:
        case 'movi', r4a, imm8: 
            return asm_r4_imm8(0b0111, r4a, imm8, labels=labels)

        case 'storer', '[', r4b, ']', r4a: 
            return asm_subop_skip_r4_r4(0b0011, 0b000, False, r4b, r4a)
        case 'add', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0110, 0b011, False, r4b, r4a)
        case 'xchg', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0001, 0b000, False, r4b, r4a)
        case 'movr', r4a, r4b: 
            return asm_subop_skip_r4_r4(0b0000, 0b000, False, r4b, r4a)

        case _:
            raise NotImplementedError(line)


def assemble(toklines):
    offset = 0  # bytes
    labels = {}
    words = []  # words

    for line in toklines:
        match line:
            case (('labeldef', label),):
                words.append((offset, None, line))
                labels[label] = offset
            case (str(ins), *args,):
                words.append((offset, asm_ins((ins, *args), labels=labels), line))
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
