add_executable(main
	main.cpp
)


target_include_directories(main PRIVATE src)
target_link_libraries(main pico_stdlib )


pico_add_extra_outputs(main)
pico_enable_stdio_usb(main 1)
pico_enable_stdio_uart(main 0)
