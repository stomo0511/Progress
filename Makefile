CXX = /usr/local/bin/g++
#CXXFLAGS = -g -fopenmp -Wall -DDEBUG
CXXFLAGS = -O3 -fopenmp -Wall

LOBJS =	Progress.o

LIBS = libProgress.a

$(LIBS):	$(LOBJS)
	$(AR) r $(LIBS) $(LOBJS)
	ranlib $(LIBS)

all:	$(LIBS)

clean:
	rm -f *.o $(LIBS)

.cpp.o :
	$(CXX) $(CXXFLAGS) -c $<
