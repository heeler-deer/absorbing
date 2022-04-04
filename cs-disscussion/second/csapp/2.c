

#include <stdio.h>

int main()

{



float    a[3]={1143139122437582505939828736.0,76482007234779498639230238720.0,9.222452464e-39};

printf("%d\n",sizeof(float));

printf("%s\n",a);


unsigned int *a0 = (unsigned int*)&a[0];
printf("a0=%X\n",*a0);


unsigned int *a1 = (unsigned int*)&a[1];
printf("a1=%X\n",*a1);



unsigned int *a2 = (unsigned int*)&a[2];
printf("a2=%X\n",*a2);



return 0;

}