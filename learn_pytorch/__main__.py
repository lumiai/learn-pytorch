import sys

from learn_pytorch.learn_pytorch import fib

if __name__ == "__main__":
    n = int(sys.argv[1])
    print(fib(n))
