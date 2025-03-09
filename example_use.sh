#!/bin/bash

echo ""

read -rp "Number of process: " n_process

for i in $(seq 0 "$((n_process - 1))"); do
    echo "$i"
done
