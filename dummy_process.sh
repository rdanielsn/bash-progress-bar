#!/bin/bash

source ./progress_bar.sh

echo ""
read -rp "Number of process: " n_process

progress_setup "$n_process"
for i in $(seq 1 "$n_process"); do
    sleep .75 # simulate a process
    progress_update "$i"
done
echo ""

echo "Finished."
