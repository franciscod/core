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
	movi a 0x10
	calli(sleep)

	movr a b
	calli(io_write)
	movi a 0x10
	calli(sleep)

	jmpi(loop)

io_write:
	storei [0x3FF] a
	ret

sleep:
	movi juanca 1
	setcc zero
sleep_loop:
	sub a juanca
	setcc or Z
	maybe add ip juanca // Skip next instruction
	jmpi(sleep_loop)
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
