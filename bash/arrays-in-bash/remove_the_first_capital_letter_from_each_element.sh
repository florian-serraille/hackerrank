#!/bin/bash

readarray a
echo ${a[@]/[[:upper:]]/.}

