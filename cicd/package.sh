#!/usr/bin/env bash

# 1. Удаляем старую структуру, если есть
rm -rf pkg
mkdir -p pkg/DEBIAN
mkdir -p pkg/usr/local/bin

# 2. Копируем бинарник в нужное место
cp longest-word pkg/usr/local/bin/

# 3. Пишем control-файл
cat <<EOF > pkg/DEBIAN/control
Package: longest-word
Version: 1.0
Section: utils
Priority: optional
Architecture: amd64
Maintainer: Maximdaa <maximdaa03@yandex.ru>
Description: Program for finding the longest word (with CI/CD)
EOF

# 4. Собираем deb
dpkg-deb --build pkg
mv pkg.deb longest-word_1.0_amd64.deb
echo "Package longest-word_1.0_amd64.deb created."
