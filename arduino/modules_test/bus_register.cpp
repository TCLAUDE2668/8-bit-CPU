#include "bus_register.h"
#include <Arduino.h>

#define PIN_LOAD    13
#define PIN_OUT     12


Register::Register()
    : BusDevice{9, 8, 7, 6, 5, 4, 3, 2}
{

}

void Register::setup()
{
    clock.setup();

    digitalWrite(get_pin_load(), HIGH);
    pinMode(get_pin_load(), OUTPUT);

    digitalWrite(get_pin_out(), HIGH);
    pinMode(get_pin_out(), OUTPUT);
}

void Register::load()
{
    digitalWrite(get_pin_load(), LOW);
    clock.pulse();
    digitalWrite(get_pin_load(), HIGH);
}

void Register::write(uint8_t value)
{
    bus.write(value);
    digitalWrite(get_pin_load(), LOW);
    clock.pulse();
    // Emulate bus changes before LOAD is released
    // but since register should latch the value on
    // clock pulse - it should not affect it anymore
    bus.write(~value);
    digitalWrite(get_pin_load(), HIGH);

    // Add few pulses to see if releasing LOAD really
    // worked
    clock.pulse();
    clock.pulse();

    // allow other devices to drive the bus
    bus.set_input();
}

uint8_t Register::read()
{
    bus.set_input();
    digitalWrite(get_pin_out(), LOW);
    uint8_t value = bus.read();
    digitalWrite(get_pin_out(), HIGH);

    return value;
}

uint8_t Register::get_pin_load()
{
    return PIN_LOAD;
}

uint8_t Register::get_pin_out()
{
    return PIN_OUT;
}
