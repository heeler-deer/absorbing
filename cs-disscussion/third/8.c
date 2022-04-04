#include <stdio.h>

int main()
{
    int i = 0;
    int j = 0;
    switch (i)
    {
    case -1:
        j += 1;
        break;
    case -2:
        j += 2;
        break;
    case -3:
        j += 3;
        break;
    

    case -7:
        j += 70;
        break;
    case -8:
        j+=80;
        break;
    default:
        j += 5;
        break;
    }
    return 0;
}