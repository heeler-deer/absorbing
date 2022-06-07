
#include "csapp.h"


int outtime=5;


static sigjmp_buf alarm_env;
static void alarm_handler(int sig)
{
    siglongjmp(alarm_env, 1);
}

char *tfgets(char *s, int size, FILE *stream)
{
    char *p = NULL;
    Signal(SIGALRM, alarm_handler);
    Alarm(outtime);
    if (!sigsetjmp(alarm_env, 1)) {
        p = fgets(s, size, stream);
        
        Alarm(0);   // Cancel the alarm time.
    }    
    Signal(SIGALRM, SIG_DFL);
    return p;
}

int main(int argc, char const *argv[])
{   init:
    char buff[1024];
    char* s = tfgets(buff, sizeof(buff), stdin);

     if (s == NULL) {
        printf("5 seconds end \n");
        printf("You are wrong \n");
        printf("Now you could try again\n");
        goto init;
    } else {
        printf("%s", s);
    } 
    return 0;
}