#!/bin/env python3
n = int(input())
print(*[num**2 for num in range(n)], sep="\n")

