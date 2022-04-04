#include <stdio.h>

int main()
{
    int i = 0;
    int j = 0;
    switch (i)
    {
    case -100:
        j += 1;
        break;
    case -2000:
        j += 2;
        break;
    case -3:
        j += 3;
        break;
    case 40:
        j += 4;
        break;
    case 500:
        j += 5;
    case 67548:
        j += 70;
        break;
    default:
        j += 5;
        break;
    }
    return 0;
}