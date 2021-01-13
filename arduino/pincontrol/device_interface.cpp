#include <Arduino.h>
#include "device_interface.h"

DeviceInterface DeviceInterface::instance;

#define PIN_CLK        SCL
#define PIN_CLK_INV    SDA

DeviceInterface::DeviceInterface()
    : mainBus{9, 8, 7, 6, 5, 4, 3, 2}, clock{PIN_CLK}, inv_clock{PIN_CLK_INV}
{

}


void DeviceInterface::setup()
{
    //mainBus.setup();
    clock.setup();
    inv_clock.setup();
    control.setup();
}