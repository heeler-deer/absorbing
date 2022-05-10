#include<pthread.h>
#include<iostream>
#include<unistd.h>

using namespace std;

pthread_mutex_t mutex1;

void *myid1(void *arg)
{
    pthread_mutex_lock(&mutex1);//上锁
    for(int i=0;i<5;i++)
    {
        sleep(1);
        cout<<"myid111111"<<endl;
    }
    pthread_mutex_unlock(&mutex1);//开锁
}

void *myid2(void *arg)
{
    pthread_mutex_lock(&mutex1);
    for(int i=0;i<5;i++)
    {
        sleep(1);
        cout<<"myid222222"<<endl;
    }
    pthread_mutex_unlock(&mutex1);
}

void *myid3(void *arg)
{
    pthread_mutex_lock(&mutex1);
    for(int i=0;i<5;i++)
    {
        sleep(1);
        cout<<"myid333333"<<endl;
    }
    pthread_mutex_unlock(&mutex1);
}

int main(int argc, char** argv)
{
    pthread_t id1,id2,id3;
    pthread_mutex_init(&mutex1,NULL);//初始化互斥锁
    
    pthread_create(&id1,NULL,myid1,NULL);
    pthread_create(&id2,NULL,myid2,NULL);
    pthread_create(&id3,NULL,myid3,NULL);    
    
    pthread_exit(&id1);
    pthread_exit(&id2);
    pthread_exit(&id3);

    pthread_mutex_destroy(&mutex1);//释放互斥锁
}