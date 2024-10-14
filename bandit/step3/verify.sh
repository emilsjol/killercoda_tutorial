#!/bin/bash


output=$(bandit -r ./bad_sql.py --quiet)

if [ -z "$output" ]; then
    echo "No issues found. Bandit verification passed!"
    exit 0
else
    echo "Bandit found issues:"
    echo "$output"
    echo "Verification failed. Please fix the issue."
    exit 1
fi
