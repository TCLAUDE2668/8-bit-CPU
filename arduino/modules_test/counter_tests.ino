#include "bus_counter.h"

Counter cnt;

void counter_demo()
{
    cnt.setup();

    for(;;)
    {
        cnt.MoveNext();
        uint8_t val = cnt.read();
        Serial.println(val);
        delay(100);
    }
}

void test_count_up(Counter *c, int repeats);
void reg_load_store_output(Register *r, int repeats);

void counter_tests()
{
    reg_load_store_output(&cnt, 1000);
    test_count_up(&cnt, 100);
}


void test_count_up(Counter *c, int repeats)
{
    c->setup();
    Serial.print(F("Count up"));
    c->write(0);
    for (int pass = 0; pass < repeats; ++pass)
    {
        if ((pass % 4) == 0)
            Serial.print('.');
        for (int i = 0; i < 256; ++i)
        {
            uint8_t val = c->read();
            if (val != (uint8_t)i)
            {
                Serial.print(F("ERR "));
                Serial.println(i);
                return;
            }
            c->MoveNext();
        }
    }
    Serial.println(F("OK"));
}
