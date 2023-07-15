// Descriptive aliases
#define bh     r0
#define a      r1
#define b      r2
#define c      r3
#define d      r4
#define e      r5
#define f      r6
#define g      r7
#define fl     r8
#define ip     r9
#define rip    r9
#define pc     r9
#define sp     ra
#define juanca rb
#define cs     rc
#define ds     rd
#define lr     re
#define wh     rf

// Numeric aliases
#define r10    ra
#define r11    rb
#define r12    rc
#define r13    rd
#define r14    re
#define r15    rf

// Pseudo instructions
#define calli(addr) \
    movi lr addr;   \
    xchg lr ip
#define callr(reg) \
    movr lr reg;   \
    xchg lr ip
#define ret        \
    movr ip lr
