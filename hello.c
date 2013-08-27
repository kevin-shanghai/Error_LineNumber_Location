#include <stdio.h>
void func() 
{
 char*p = "hello world.\n";
 p[2] = 'k';
 printf("%s\n", p);
}
