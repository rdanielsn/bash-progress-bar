#!/bin/bash

source ./progress_bar.sh

echo ""
read -rp "Number of process: " n_process

progress_setup "$n_process"
for i in $(seq 1 "$n_process"); do
    progress_update "$i"
    sleep .8 # simulate a process
done
echo ""

echo "Finished."
