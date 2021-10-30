#!/usr/bin/env bash

# Saw this paper:
#
# Is this the simplest (and most surprising) sorting algorithm ever?
# by Stanley P. Y. Fung
# https://arxiv.org/abs/2110.01111
#
# This is the algorithm. Unbelievable
# simple. But slow. Time complexity O(n²)
#
# for i = 1 to n do
#     for j = 1 to n do
#         if A[i] < A[j] then
#             swap A[i] and A[j]

array=(5 3 2 1 4 6 10 9 7 8)

for ((i = 0; i < ${#array[@]}; ++i)); do
    for ((j = 0; j < ${#array[@]}; ++j)); do
        if [[ ${array[i]} -lt ${array[j]} ]]; then
            tmp=${array[i]}
            array[i]=${array[j]}
            array[j]=$tmp
        fi
    done
done

echo "${array[*]}"
