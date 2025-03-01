#!/usr/bin/env bash

# 1. Установим компилятор (и другие инструменты сборки)
sudo apt-get update && sudo apt-get install -y build-essential

# 2. Запускаем make (предполагаем, что Makefile и main.c в текущей папке)
make

# 3. Проверяем, что бинарник действительно собрался
if [ ! -f longest-word ]; then
  echo "Error: бинарник longest-word не найден!"
  exit 1
fi

echo "Сборка завершена успешно."
exit 0
