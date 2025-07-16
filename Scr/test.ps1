#!/bin/bash

EXPECTED="Hello, World!"
ACTUAL=$(dotnet run --project ./test-ci.csproj | tr -d '\r')

if [ "$ACTUAL" = "$EXPECTED" ]; then
  echo "✅ Test Passed"
else
  echo "❌ Test Failed"
  echo "Expected: '$EXPECTED'"
  echo "Actual:   '$ACTUAL'"
fi