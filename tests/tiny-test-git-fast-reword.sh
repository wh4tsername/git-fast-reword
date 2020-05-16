#!/bin/bash

((num_tests=10))

mkdir tiny_test_bin
cd tiny_test_bin || exit
for ((i = 0; i < num_tests; i++))
do
  touch test${i}.txt
  git add -A
  git commit -m "commit msg #${i}"
done

git log --oneline

for ((i = num_tests; i >= 0; i--))
do
  git reset --hard HEAD~1
done