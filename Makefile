a.out:segment_violation.c
	gcc -g -L. -rdynamic segment_violation.c -o a.out -lmyhello
clean:
	@echo "remove the a.out"
	rm -rf  a.out
