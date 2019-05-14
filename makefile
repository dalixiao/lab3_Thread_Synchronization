all: sample_grader

sample_grader:autograder_final.c thread_lib 
	g++ autograder_final.c threads.o -g -o sample_grader

thread_lib:pthreads.cpp
	g++ -g -c pthreads.cpp -o threads.o

clean:
	rm threads.o
	rm sample_grader
