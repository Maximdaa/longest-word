#!/usr/bin/env bash

# Проверяем, что бинарник собран
if [ ! -f longest-word ]; then
  echo "Error: longest-word not found!"
  exit 1
fi

# Простейшие тесты
echo "Hello world" | ./longest-word | grep "Hello" >/dev/null
if [ $? -ne 0 ]; then
  echo "Test 1 failed: ожидалось 'Hello'"
  exit 1
fi

echo "One two three" | ./longest-word | grep "three" >/dev/null
if [ $? -ne 0 ]; then
  echo "Test 2 failed: ожидалось 'three'"
  exit 1
fi

echo "All tests passed!"
exit 0
