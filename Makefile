modern: *.cpp *.hpp
	g++ *.cpp -std=c++14 -o modern -Wall -Wextra -Werror -Wpedantic -g

modernRelase: *.cpp *.hpp
	g++ *.cpp -std=c++14 -o $@ -Wall -Wextra -Werror -Wpedantic -O3

clean:
	rm modern
