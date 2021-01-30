build: fib6

fib6:
	as -o fib6.o fib6.s
	gcc -o fib6 fib6.o