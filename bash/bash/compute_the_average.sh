#!/bin/bash

read counter

int_sum=0

for (( i = 0 ; i < ${counter}; i++ )); do
    read int
    int_sum=$(( ${int_sum} + int  ))
done

echo "${int_sum} / ${counter}" | bc -l | xargs printf "%.3f"

