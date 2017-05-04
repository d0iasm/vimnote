import os
from os.path import join, dirname

if __name__ == '__main__':
    path = join(dirname(__file__), '.env')
    print(path)
