#!/bin/bash

((num_tests=10))

for ((i = 0; i < num_tests; i++))
do
  touch test${i}.txt
  git add -A
  git commit -m "commit msg #${i}"
done

git log --oneline -q

#for ((i = num_tests; i >= 0; i--))
#do
  git reset --hard HEAD
#done