#!/bin/bash

echo "Checking formatting..."
if [ -n "$(gofmt -s -l .)" ]; then
    echo "Code is not formatted. Run 'gofmt -w .'"
    exit 1
fi
echo "Test passed: code formatted!"
exit 0