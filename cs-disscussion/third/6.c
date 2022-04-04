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

    default:
        j += 5;
        break;
    }
    return 0;
}