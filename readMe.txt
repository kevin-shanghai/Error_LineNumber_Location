//*********************************************************************
//Author: kevin.Fu
//Email:  kevinfu1985@gmail.com
//Date:   2013/8/27
//*********************************************************************


This program is about how to locate the error line number about the source code when the process was 
crashed. I think you must encountered your program was crashed but you can not locate the problem, at this time we want to know where the problem is especially the source code line number in order to make it work 
as soon as possible. This programe gives you answer, we use the standard api in linux such as "backtrace()" and "backtrace_sysmbols_fd()" to get the error message in stack when the program was crashed. When your program is static linked, problem was much more easy to deal, but if your programe use shared library, you must be careful, because the shared library dynamic linked, so the base address is easy changed.

This programe give you an example to show how to locate the error line number of the programe, before you use run it, you must cp the share library libmyhello.so which is compiled from hello.c used command line:

"gcc -g -fPIC -shared -o libmyhello.so hello.c", if you want to recompile the libmyhello.so, make sure you use this command line. There is a error in hello.c which located in line number 5:"p[2] = 'k'; run the program "a.out" with root previlege, you can get the output like this:
"The pid is:4663
The .so name is:/usr/lib/libmyhello.so
The Base address of the /usr/lib/libmyhello.so is:7f5dd0f4f000
The Stack Address is:0x7f5dd0f4f5c7
OffsetAddress:1479
The error line number is:
/home/kevin/Work/Programing/C_Cpp/ErrorLocation/hello.c:5"

You can change and trasport this programe without inform me. Just enjoy! ^_^