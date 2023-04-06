#!/bin/bash

makePath="../src/CMakeLists.txt"
tmpPath="/tmp/pablo-build-cmake-file"

grep -v "pico_enable_stdio" $makePath > $tmpPath

echo "pico_enable_stdio_usb(main 1)" >> $tmpPath
echo "pico_enable_stdio_uart(main 0)" >> $tmpPath

cp $tmpPath $makePath

cd ../build/src
make -j4
mv main.uf2 debug.uf2

