movi r1, 0
MoVi r2, 1

loop:
    storer [r0], r1
    add      r1, r2
    xchg     r1, r2 
    movi     r9, loop # pc
