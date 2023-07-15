CPP=cpp
CPPFLAGS=-nostdinc -P -include prelude.asm.h

all: fib.bin

clean:
	rm -rf __pycache__ *.bin *.unmacroed.asm

%.bin: %.asm
	$(CPP) $(CPPFLAGS) < $< | python3 assembler.py > $@

%.unmacroed.asm: %.asm
	$(CPP) $(CPPFLAGS) < $< > $@

.PHONY: all clean
