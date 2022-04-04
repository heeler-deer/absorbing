#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main()
{
	char str[20]={"Hello world"};
	printf("%d\n",&str);
	float *xp,*yp,*zp;
	float a[3];
	xp=str;yp=(str+4);zp=(str+8);
	a[0]=*xp;
	a[1]=*yp;
	a[2]=*zp;
	printf("%f\n",a[0]);
	printf("%f\n",a[1]);
	printf("%f\n",a[2]);
    int *xx,*yy,*zz;
    int b[3];
    xx=str;yy=(str+4);zz=(str+8);
	b[0]=*xx;
	b[1]=*yy;
	b[2]=*zz;
	printf("%d\n",b[0]);
	printf("%d\n",b[1]);
	printf("%d\n",b[2]);
	return 0;
}