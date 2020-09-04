#!/bin/env python3

i = int (input())

if i % 2 == 0 and (i in range(2, 6) or i not in range(6, 21)):
    print("Not Weird")
else:
    print("Weird")
