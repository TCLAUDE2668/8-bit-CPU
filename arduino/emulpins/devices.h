#ifndef DEVICES_H
#define DEVICES_H

#include <stdint.h>

extern uint8_t main_bus;
extern uint8_t addr_high_bus;
extern uint8_t flags_bus;
extern uint8_t alu_arg_a_bus;
extern uint8_t alu_arg_b_bus;

void set_control(uint32_t control_word);
void clock_pulse();
void clock_inverted();

class Register {
    private:
        uint8_t latched_primary;
        uint8_t latched_secondary;
        bool load_enabled;
    public:
        Register();
        void set_load(bool enabled);
        void set_out(bool enabled);
        void set_tap_a(bool enabled);
        void set_tap_b(bool enabled);
        uint8_t read_tap();
        void clock_pulse();
        void clock_inverted();
};


class ALU_AddSub {
    private:
        bool sub;
        bool carry;
    public:
        ALU_AddSub();
        void set_sub(bool subtract);
        void set_carry(bool carry);
        void set_out(bool enabled);
};

class ALU_AndOr {
    private:
        bool op_or;
    public:
        ALU_AndOr();
        void set_or(bool logical_or);
        void set_out(bool enabled);
};

class ALU_ShiftSwap {
    private:
        bool op_swap;
        bool carry;
    public:
        ALU_ShiftSwap();
        void set_swap(bool swap);
        void set_carry(bool carry);
        void set_out(bool enabled);
};

class ALU_XorNot {
    private:
        bool op_not;
    public:
        ALU_XorNot();
        void set_not(bool logical_not);
        void set_out(bool enabled);
};


#define FLAG_V  0b1000
#define FLAG_C  0b0100
#define FLAG_Z  0b0010
#define FLAG_N  0b0001


class FlagsReg
{
    private:
        uint8_t latched_primary;
        uint8_t latched_secondary;
        bool load_enabled;
        bool calc_enabled;
    public:
        FlagsReg();
        void set_out(bool enabled);
        void set_load(bool enabled);
        void set_calc(bool enabled);
        void clock_pulse();
        void clock_inverted();
        uint8_t read_tap();
};

class ProgramCounter
{
    private:
        uint16_t val;
        bool count_enabled;
        bool load_enabled;
    public:
        void set_out(bool enabled);
        void set_load(bool enabled);
        void set_count(bool enabled);
        void clock_pulse();
};

class PCSwap
{
    private:
        bool sw_enabled;
    public:
        void set_swap(bool enabled);
        void clock_pulse();
};

class StackPointer
{
    private:
        uint16_t val;
        bool inc_enabled;
        bool dec_enabled;
        bool load_enabled;
    public:
        void set_out(bool enabled);
        void set_load(bool enabled);
        void set_inc(bool enabled);
        void set_dec(bool enabled);
        void clock_pulse();
};

class MaRegister {
    private:
        uint16_t latched_primary;
        uint16_t latched_secondary;
        bool load_enabled;
        bool add_enabled;
    public:
        MaRegister();
        void set_load(bool enabled);
        void set_add(bool add);
        void clock_pulse();
        void clock_inverted();
        uint16_t read_tap();
};

class Memory
{
    private:
        bool write_enabled;
    public:
        void setup();
        void set_out(bool enabled);
        void set_write(bool enabled);
        void clock_pulse();
};

class HighAddrStagingReg
{
    private:
        uint8_t val;
        bool load_enabled;
        bool to_main;
    public:
        void set_out(bool enabled);
        void set_load(bool enabled);
        void set_dir(bool to_main);
        void clock_pulse();
};

class AddressReg
{
    private:
        uint16_t val;
        bool load_enabled;
    public:
        void set_out(bool enabled);
        void set_load(bool enabled);
        void clock_pulse();
};

extern Register A;
extern Register B;
extern Register IR;
extern MaRegister MAR;
extern ALU_AddSub AddSub;
extern ALU_AndOr AndOr;
extern ALU_ShiftSwap ShiftSwap;
extern ALU_XorNot XorNot;
extern FlagsReg Flags;
extern ProgramCounter *PC;
extern StackPointer r_SP;
extern ProgramCounter *LR;
extern PCSwap PCSW;
extern Memory RAM;
extern HighAddrStagingReg HAS;
extern AddressReg   DP;

#endif  /* DEVICES_H */
