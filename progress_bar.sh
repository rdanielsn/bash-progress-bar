#!/bin/bash

BAR_CHAR="="

function progress_setup() {
    local N="$1"
    echo "setup for $N number of process"
    BAR=""
    echo ""
}

function progress_update() {
    local step="$1"
    BAR+="$BAR_CHAR"
    printf "\ri: %s | bar: %s" "$step" "$BAR"
}
