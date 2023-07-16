#define XORSHIFT_ADDR_0 0x010
#define XORSHIFT_ADDR_1 0x011

#define XORSHIFT_INIT_0 0x12
#define XORSHIFT_INIT_1 0x34

xorshift_create:
	movi a XORSHIFT_INIT_0
	storei [XORSHIFT_ADDR_0] a
	movi a XORSHIFT_INIT_1
	storei [XORSHIFT_ADDR_1] a

loop:
	calli(xorshift_next)

	calli(io_write)
	movi a 0x100
	calli(sleep)

	movr b a
	calli(io_write)
	movi a 0x100
	calli(sleep)

	jmpi(loop)

io_write:
	movi   juanca 0xC0
	xchg   ds     juanca
	storei [0xFF] a
	xchg   juanca ds
	ret

sleep:
	movi juanca 1
	setcc one
sleep_loop:
	or a a
	setcc and z
	sub a juanca
	maybe jmpi(sleep_loop)
	ret

xorshift_next:
	loadi a [XORSHIFT_ADDR_0]
	loadi b [XORSHIFT_ADDR_1]

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

	storei [XORSHIFT_ADDR_0] a
	storei [XORSHIFT_ADDR_1] b
	ret
