#!/bin/bash

makePath="../CMakeLists.txt"
tmpPath="/tmp/pablo-build-cmake-file"

grep -v "pico_enable_stdio" $makePath > $tmpPath

echo "#pico_enable_stdio_usb(main 1)" >> $tmpPath
echo "pico_enable_stdio_uart(main 1)" >> $tmpPath

cp $tmpPath $makePath

cd ../build/
make -j4
