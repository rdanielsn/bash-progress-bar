#!/bin/bash

BAR_CHAR="="

function progress_setup() {
    N_PROCESS="$1"
    BAR_MAX_SIZE=20

    BAR_SIZE=""
    BAR=""

    BLANK_SIZE=""
    BLANK=""

    echo ""
}

function progress_update() {
    local step="$1"
    local PERCENTAGE

    PERCENTAGE=$(bc <<<" 100 * $step / $N_PROCESS")

    BAR_SIZE=$(bc <<<"$PERCENTAGE * $BAR_MAX_SIZE / 100")
    BAR=$(printf "%${BAR_SIZE}s" | tr ' ' "$BAR_CHAR")

    BLANK_SIZE=$((BAR_MAX_SIZE - BAR_SIZE))
    BLANK=$(printf "%${BLANK_SIZE}s")

    printf "\r[%s%s] %s%%" "$BAR" "$BLANK" "$PERCENTAGE"
}
