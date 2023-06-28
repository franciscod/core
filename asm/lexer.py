import re

TOKENS_TEXT = {
    # INSTRUCTIONS
    "storei",
    "loadi",
    "movi",
    "sl",
    "sr",
    "cmp",
    "sub",
    "add",
    "xor",
    "or",
    "and",
    "setcc",
    "storer",
    "loadr",
    "xchg",
    "movr",

    # REGISTERS
    "r0",
    "r1",
    "r2",
    "r3",
    "r4",
    "r5",
    "r6",
    "r7",
    "r8",
    "r9",
    "ra",
    "rb",
    "rc",
    "rd",
    "re",
    "rf",

    # SIGILS
    "[",
    "]",

    # SETCC
    "zero",
    "nor",
    "xor",
    "nand",
    "and",
    "xnor",
    "or",
    "one",
}

TOKENS_PARSE = [
    # NUMBERS
    (r"0x([0-9a-fA-F]+)",            lambda m: int(m, 16)),
    (r"0b([0-1]+)",                  lambda m: int(m,  2)),
    (r"(\d+)",                       lambda m: int(m, 10)),

    # LABELS
    (r"([a-zA-Z-_][0-9a-zA-Z-_]+):", lambda m: (':', m)),

    # SETCC SHENANIGANS
    (r"([cC]?[nN]?[vV]?[zZ]?)",      lambda m: {c.lower(): c == c.upper() for c in m}),
]

def lex_text(part, toks):
    candidate_token = part.lower()
    if candidate_token in TOKENS_TEXT:
        toks.append(candidate_token)
        return True

def lex_parse(part, toks):
    for pattern, action in TOKENS_PARSE:
        m = re.fullmatch(pattern, part)
        if m is None:
            continue
        group = m[1]
        toks.append(action(group))
        return True

def lex_line(line):
    toks = []
    for part in line.split():
        if lex_text(part, toks):
            continue
        if lex_parse(part, toks):
            continue
        # TODO: error bad token

    return toks

def lex(source):
    for line in source.split('\n'):
        line = line.strip().replace(',', ' ')
        toks = lex_line(line)

        if not toks:
            # empty line
            continue

        yield tuple(toks)

if __name__ == "__main__":
    TEST_CODE = """
movi r1, 0b11
movi r1, 0x11
movi r1,   11

hello:
setcc and CvZ
"""
    for toks in lex(TEST_CODE):
        print(toks)

