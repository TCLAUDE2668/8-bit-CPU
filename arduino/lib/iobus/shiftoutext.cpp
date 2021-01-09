#include "shiftoutext.h"
#include <SPI.h>

#define LATCH_PIN  10

ShiftOutExt::ShiftOutExt()
    : ShiftOutExt(CtrlPin(LATCH_PIN, CtrlPin::ACTIVE_HIGH))
{
}

ShiftOutExt::ShiftOutExt(CtrlPin&& _latch)
    : latch{_latch}
{
}

void ShiftOutExt::setup()
{
    SPI.begin();
    SPI.setDataMode(SPI_MODE0);
    SPI.setBitOrder(MSBFIRST);
    SPI.setClockDivider(SPI_CLOCK_DIV2);

    latch.setup();
}

void ShiftOutExt::write8(uint8_t data)
{
    SPI.transfer(data);
    latch.on();
    latch.off();
}

void ShiftOutExt::write16(uint16_t data)
{
    SPI.transfer((data >> 8) & 0xFF);
    SPI.transfer(data & 0xFF);
    latch.on();
    latch.off();
}
