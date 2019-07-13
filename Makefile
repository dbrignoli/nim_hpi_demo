
TARGETS=test_hpi1 asihpisetmode

all: $(TARGETS)

test_hpi1: test_hpi1.nim Makefile
	nim c --opt:size -d:release test_hpi1.nim
	strip -s $@

asihpisetmode: asihpisetmode.nim hpi.nim Makefile
	nim c --opt:size -d:release asihpisetmode.nim
	strip -s $@

clean:
	rm $(TARGETS)

.PHONY: all clean
