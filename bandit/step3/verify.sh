#!/bin/bash

BANDIT_OUTPUT=$(bandit -r /root/killercoda_tutorial/bandit/user_content/bad_sql.py 2>&1)
BANDIT_EXIT_CODE=$?

if echo "$BANDIT_OUTPUT" | grep -q "No issues identified."; then
    echo "Verification passed: Bandit found no security issues."
    exit 0
else
    echo "Verification failed: Bandit detected security issues."
    echo "$BANDIT_OUTPUT" 
    exit 1
fi
