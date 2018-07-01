CXX= g++
CXXFLAGS= -c -Wall -Wpedantic -Wextra -Werror -g
STD= -std=c++14
SOURCES= *.cpp
OBJECTS= $(SOURCES: .cpp=.o)

final: $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@

%.o: %.cpp %.hpp
	$(CXX) $(STD) $(SOURCES) $(CXXFLAGS) $< -o $@

clean:
	rm $(OBJECTS) final
