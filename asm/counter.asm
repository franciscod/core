init:
	xor  a a // a is counter
	movi b 1 // b is 1
loop:
	storei [0x3FF] a

	setcc one
wait_for_button_high:
	loadi c [0x3FE]
	or c c
	setcc and Z
	maybe add ip b
	jmpi(wait_for_button_high)

	setcc one
wait_for_button_low:
	loadi c [0x3FE]
	or c c
	setcc and z
	maybe add ip b
	jmpi(wait_for_button_low)

	add a b
	jmpi(loop)
