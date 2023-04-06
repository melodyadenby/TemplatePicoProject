if (NOT EXISTS $ENV{PICO_SDK_PATH})
	message(FATAL_ERROR "Pico SDK Path not found! set the variable PICO_SDK_PATH")
endif()

cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(pico_sdk_import.cmake)

project(pablo-firmware C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

set(PICO_EXAMPLES_PATH ${PROJECT_SOURCE_DIR})
include($ENV{PICO_SDK_PATH}/pico_sdk_init.cmake)

# Initialize the SDK
pico_sdk_init()

add_subdirectory(src)

add_compile_options(#-Wall
        -Wno-format          # int != int32_t as far as the compiler is concerned because gcc has int32_t as long int
        -Wno-unused-function # we have some for the docs that aren't called
        -Wno-maybe-uninitialized
)
pico_enable_stdio_usb(main 1)
pico_enable_stdio_uart(main 0)
