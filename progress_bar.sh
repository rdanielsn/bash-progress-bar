#!/bin/bash

BAR_CHAR="="

function progress_setup() {
    N_PROCESS="$1"
    PROCESS_REMAIN="$((N_PROCESS - 1))"
    BAR=""
    echo ""
}

function progress_update() {
    local step="$1"
    local PERCENTAGE
    PERCENTAGE=$(bc <<<" 100 * $step / $N_PROCESS")
    BAR+="$BAR_CHAR"

    BLANK_SPACE=$(printf "%${PROCESS_REMAIN}s")
    PROCESS_REMAIN=$((PROCESS_REMAIN - 1))

    printf "\r[%s%s] %s%%" "$BAR" "$BLANK_SPACE" "$PERCENTAGE"
}
