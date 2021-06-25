#!/bin/sh
DATA1="BNK GROUP"
echo "1: $DATA1"
echo "2: ${DATA1:-"헬로키티2"}"
echo "2: ${DATA2:-"헬로키티3"}"
echo "2: ${DATA1:="헬로키티3"}"
echo "2: ${DATA2:="헬로키티4"}"
echo "2: ${DATA2:="헬로키티5"}"
echo "2: ${DATA1:+"헬로키티6"}"
echo "2: ${DATA1:?"헬로키티7"}"
echo "2: ${DATA3:?"헬로키티8"}"
echo ============================================
