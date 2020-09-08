#!/bin/bash

readarray a
echo ${a[@]/*[aA]*/}
