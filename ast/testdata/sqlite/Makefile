# *.ll -> *.ll.golden
LL = $(wildcard *.ll)
GOLDEN = $(LL:.ll=.ll.golden)

all: $(GOLDEN)

%.ll.golden: %.ll
	../golden.sh $^

clean:
	rm -f ${GOLDEN}

.PHONY: all clean
