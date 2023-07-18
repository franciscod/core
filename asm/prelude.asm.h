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
#define r10 ra
#define r11 rb
#define r12 rc
#define r13 rd
#define r14 re
#define r15 rf

// Pseudo instructions
#define calli(addr)   \
	push(lr);     \
	movi lr addr; \
	xchg lr ip;   \
	pop(lr)
#define callr(reg)    \
	push(lr);     \
	movr lr reg;  \
	xchg lr ip    \
	pop(lr)

#define ret           \
	movr ip lr

#define jmpi(addr)    \
	movi ip addr
#define jmpr(reg)     \
	movr ip reg

#define push(reg)        \
	storer [sp] reg; \
	add sp wh
#define pop(reg)      \
	sub sp wh;    \
	loadr reg [sp]
