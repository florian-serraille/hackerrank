#!/bin/bash

awk '{

avg = ($2 + $3 + $4) / 3;
mark = (avg<50)?"FAIL":(avg<80)?"B":"A"

print $0, ":", mark;
}'
