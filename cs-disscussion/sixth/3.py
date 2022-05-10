import threading
def job1():
    global n, lock
    # 获取锁
    #lock.acquire()
    for i in range(10):
        n += 1
        print('job1', n)
    #lock.release()


def job2():
    global n, lock
    # 获取锁
    #lock.acquire()
    for i in range(10):
        n += 10
        print('job2', n)
    #lock.release()

n = 0
# 生成锁对象
#lock = threading.Lock()

t1 = threading.Thread(target=job1)
t2 = threading.Thread(target=job2)
t1.start()
t2.start()
