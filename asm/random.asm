#define XORSHIFT_INIT_0 0x12
#define XORSHIFT_INIT_1 0x34

init:
	movi a XORSHIFT_INIT_0
	movi a XORSHIFT_INIT_1
loop:
	movr juanca b
	srl  juanca 7
	xor  b      juanca
	movr juanca a
	sl   juanca 1
	xor  b      juanca
	movr juanca a
	srl  juanca 7
	xor  a      juanca
	movr juanca b
	sl   juanca 1
	xor  a      juanca
	movr juanca a
	srl  juanca 5
	xor  b      juanca

	calli(xorshift_next)
	storei [0x3FF] a
	storei [0x3FF] b

	jmpi(loop)
