

#include <stdio.h>

int main()

{

int   a[3]={1819043144,1870078063,6581362};

unsigned int *a0 = (unsigned int*)&a[0];
printf("a0=%X\n",*a0);



unsigned int *a1 = (unsigned int*)&a[1];
printf("a1=%X\n",*a1);



unsigned int *a2 = (unsigned int*)&a[2];
printf("a2=%X\n",*a2);



printf("%d\n",sizeof(float));

printf("%s\n",a);



return 0;

}