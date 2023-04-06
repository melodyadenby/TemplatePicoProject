#include <stdio.h>
#include "pico/stdlib.h"

// constants
#define HIGH 1
#define LOW 0
#define ON 1
#define OFF 0
#define OUT GPIO_OUT
#define IN GPIO_IN

// pins
#define LED_PIN PICO_DEFAULT_LED_PIN

// function Declarations
void event_loop();
void button_check();

void setup()
{
    stdio_init_all();
    sleep_ms(2000);
    printf(" ------------------- Hello World ------------------- \n");
}

int main()
{
    setup();
    printf("Setup Done. \n ");
    while (1)
    {
        event_loop();
    }
}

void event_loop()
{
    gpio_put(LED_PIN, ON);
    sleep_ms(1000);
    gpio_put(LED_PIN, OFF);
}
