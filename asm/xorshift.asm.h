// Writes a xorshift state to the given address of the current segment

#define XORSHIFT_CREATE(     \
	addr,                \
	imm_initial_value_0, \
	imm_initial_value_1, \
	imm_initial_value_2, \
	imm_initial_value_3  \
)                            \
	PUSH(juanca)         \
	PUSH(a)              \
	PUSH(b)              \
	movi   a,      addr  \
	movi   b,      1     \
	movi   juanca, imm_initial_value_0; \
	storer a,      juanca \
	add    a,      b     \
	movi   juanca, imm_initial_value_1; \
	storer a,      juanca \
	add    a,      b     \
	movi   juanca, imm_initial_value_2; \
	storer a,      juanca \
	add    a,      b     \
	movi   juanca, imm_initial_value_3; \
	storer a,      juanca \
	add    a,      b     \
	POP(b)               \
	POP(a)               \
	POP(juanca)
