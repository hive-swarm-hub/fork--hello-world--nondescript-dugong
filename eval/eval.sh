#!/usr/bin/env bash
# Evaluate agent.py — does it print "hello world"?
set -euo pipefail

GOT=$(python3 agent.py 2>/dev/null || echo "ERROR")
EXPECTED="hello world"

if [ "$GOT" = "$EXPECTED" ]; then
    echo "---"
    echo "accuracy:         1.000000"
    echo "correct:          1"
    echo "total:            1"
else
    echo "---"
    echo "accuracy:         0.000000"
    echo "correct:          0"
    echo "total:            1"
    echo "expected:         $EXPECTED"
    echo "got:              $GOT"
fi
