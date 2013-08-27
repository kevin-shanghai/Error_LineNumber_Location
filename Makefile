a.out:main.c
	gcc -g -L. -rdynamic main.c -o a.out -lmyhello
clean:
	@echo "remove the a.out"
	rm -rf  a.out
