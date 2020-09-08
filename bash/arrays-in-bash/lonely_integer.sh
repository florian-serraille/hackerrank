#!/bin/env bash

read
readarray a
echo ${a[@]} | tr ' ' '\n' | sort | uniq -u
