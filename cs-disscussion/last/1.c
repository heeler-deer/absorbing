#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <string.h>
#include <setjmp.h>
#include <stdio.h>
#include <stdlib.h>
int outtime=5;
static sigjmp_buf env;

static jmp_buf buf;
void handler(int signal)
{
    alarm(0);
    longjmp(env, 1);
}

char *tfgets(char *buffer, int buffer_size, FILE *stream)
{

    signal(SIGALRM, handler);

    alarm(outtime);
    if (!sigsetjmp(env, 1))
        return fgets(buffer, buffer_size, stream);
    else
        return NULL;
}
void second()
{
    printf("Sorry!You have no chance now\n");
    longjmp(buf, 1);
}
void first()
{
    second();
    printf("Program has bugs\n");
}
int main()
{
    char *str;
    char buffer[100];
    char ans[100] = "hello\n";
    int i = 3;
    printf("You have %d chance(s) to solve this problem\n", i);
    printf("Game will start after 3 seconds\n");
    sleep(3);
    while (1)
    {
        printf("HINT:\n");
        if (i == 3)
            printf("five letters\n");
        if (i == 2)
            printf("often encountered\n");
        if (i == 1)
            printf("Simple in lower\n");

        if (tfgets(buffer, sizeof(buffer), stdin) != NULL)
        {
            if (i <= 0)
            {
                if (!setjmp(buf))
                {
                    first();
                }
                else
                {
                    exit(0);
                }
            }
            i--;
            printf("read: %s\n", buffer);
            if (strcmp(buffer, ans) == 0)
                {
                    printf("You are right!\n");
                    return 0;
                }
            else
            {
                if (i <= 0)
                {
                    if (!setjmp(buf))
                    {
                        first();
                    }
                    else
                    {
                        exit(0);
                    }
                }
                printf("Wrong!But you still have %d chance(s) to solve this problem\n", i);
                printf("Try it again!\n");
            }
        }
        else if (i == 0)
        {
            
            if (!setjmp(buf))
            {
                first();
            }
            else
            {

                exit(0);
            }
        }
        else
        {
            printf("Time out,you still have %d chance(s)\n", i);
        }
    }

    exit(0);
}







