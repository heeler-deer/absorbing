import threading

def main():
    n = 0
    # 生成可重入锁对象
    lock = threading.Lock()
    with lock:
        for i in range(10):
            n += 1
            with lock:
                print(n)

t1 = threading.Thread(target=main)
t1.start()
