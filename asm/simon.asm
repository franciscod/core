// Idea para el simon
//
//loop:
//	level = 1
//
//	while level != 7:
//		reset_random()
//		current_level = level
//		while current_level:
//			output = next_random()
//			wait(500ms)
//			output = 0
//			wait(500ms)
//			current_level = current_level - 1
//
//		reset_random()
//		current_level = level
//		while current_level:
//			button = read_button()
//			expected_button = next_random()
//			if expected_button != button:
//				goto fail
//			current_level = current_level - 1
//
//		level = level + 1
//
//	win:
//	output = 0b1111
//	wait(500ms)
//	output = 0
//	wait(500ms)
//	output = 0b1111
//	wait(500ms)
//	output = 0
//	wait(500ms)
//
//	fail:
//	output = 0b1000
//	wait(500ms)
//	output = 0b0100
//	wait(500ms)
//	output = 0b0010
//	wait(500ms)
//	output = 0b0001
//	wait(500ms)
//	output = 0b0000
//	wait(500ms)
//
//	goto loop

#define SLEEP movi juanca 500; calli(wait_ms)
#define OUT(imm) movi juanca imm; storei [0x3FF] juanca
#define LEVEL b
#define CURRENT_LEVEL c
#define BUTTON d
#define ONE g

#define RAND_0 e
#define RAND_1 f

#define XORSHIFT_INIT_0 0x12
#define XORSHIFT_INIT_1 0x34

loop:
	movi LEVEL 1
	movi ONE 1

	game:
		// begin reset random
		movi RAND_0 XORSHIFT_INIT_0
		movi RAND_0 XORSHIFT_INIT_1
		// end reset random

		movr CURRENT_LEVEL LEVEL
		show_pattern:
			calli(next_random)
			storei [0x3FF] juanca
			SLEEP
			OUT(0)
			SLEEP
			sub CURRENT_LEVEL ONE

			setcc one
			or CURRENT_LEVEL CURRENT_LEVEL
			setcc and z
			maybe add ip ONE
			jmpi(show_pattern)

		// begin reset random
		movi a XORSHIFT_INIT_0
		movi b XORSHIFT_INIT_1
		// end reset random

		movr CURRENT_LEVEL LEVEL

		read_pattern:
			// begin read_button
			setcc one
			wait_for_button_high:
				loadi BUTTON [0x3FE]
				or BUTTON BUTTON
				setcc and Z
				maybe add ip ONE
				jmpi(wait_for_button_high)

			setcc one
			wait_for_button_low:
				loadi juanca [0x3FE]
				or juanca juanca
				setcc and z
				maybe add ip ONE
				jmpi(wait_for_button_low)
			// end read_button
			calli(next_random)
			cmp BUTTON juanca
			setcc one
			setcc and z
			maybe add ip ONE
			jmpi(fail)
			sub CURRENT_LEVEL ONE

			setcc one
			or CURRENT_LEVEL CURRENT_LEVEL
			setcc and z
			maybe add ip ONE
			jmpi(read_pattern)

		add LEVEL ONE
		movi juanca 7
		cmp LEVEL juanca
		setcc one
		setcc and z
		maybe add ip ONE
		jmpi(game)

win:
	OUT(15)
	SLEEP
	OUT(0)
	SLEEP
	OUT(15)
	SLEEP
	OUT(0)
	SLEEP

fail:
	OUT(8)
	SLEEP
	OUT(4)
	SLEEP
	OUT(2)
	SLEEP
	OUT(1)
	SLEEP
	OUT(0)
	SLEEP

	jmpi(loop)

next_random:
	movr juanca RAND_1
	srl  juanca 7
	xor  RAND_1 juanca
	movr juanca RAND_0
	sl   juanca 1
	xor  RAND_1 juanca
	movr juanca RAND_0
	srl  juanca 7
	xor  RAND_0 juanca
	movr juanca RAND_1
	sl   juanca 1
	xor  RAND_0 juanca
	movr juanca RAND_0
	srl  juanca 5
	xor  RAND_1 juanca
	movi juanca 6
	and  RAND_0 juanca
	add  ip     juanca
	movi juanca 1
	ret
	movi juanca 2
	ret
	movi juanca 4
	ret
	movi juanca 8
	ret

// Timed for 10Mhz
wait_ms:
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	movr bh bh
	setcc one
	sub juanca ONE
	setcc and z
	maybe add ip ONE
	jmpi(wait_ms)
	ret
