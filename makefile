LDLIBS += -lpcap -lnetfilter_queue

all: 1m-block

netfilter-test.o: 1m-block.c

netfilter-test: 1m-block.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f 1m-block *.o
