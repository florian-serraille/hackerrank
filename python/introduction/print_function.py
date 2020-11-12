#!/bin/env python3

def print_sequence(i: int):
    for j in range(0, i):
        print(j + 1, end='')

if __name__ == '__main__':
    i = int(input())
    print_sequence(i)
