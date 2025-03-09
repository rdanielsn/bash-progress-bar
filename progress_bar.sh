#!/bin/bash

BAR_CHAR="="

function progress_setup() {
    N="$1"
    N_REMAIN="$(($N - 1))"
    echo "setup for $N number of process"
    BAR=""
    echo ""
}

function progress_update() {
    local step="$1"
    BAR+="$BAR_CHAR"

    BLANK_SPACE=$(printf "%${N_REMAIN}s")
    N_REMAIN=$(($N_REMAIN - 1))

    printf "\r[%s%s] %s" "$BAR" "$BLANK_SPACE" "$step"
}
