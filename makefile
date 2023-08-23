CXX = g++  # C++ 컴파일러 지정

LDLIBS += -lpcap -lnetfilter_queue

all: 1m-block

1m-block.o: 1m-block.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

1m-block: 1m-block.o
	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@

clean:
	rm -f 1m-block *.o
	rm -f index.html.*
	rm -f index.html