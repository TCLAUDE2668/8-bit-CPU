#ifndef DEVICES_H
#define DEVICES_H

#include <stdint.h>
#include "microcode.h"

extern uint8_t main_bus;
extern uint16_t address_bus;
extern uint8_t flags_bus;
extern uint8_t alu_arg_l_bus;
extern uint8_t alu_arg_r_bus;

void set_control(uint32_t control_word);
void clock_pulse();
void clock_inverted();

class CpuDevice {
    protected:
        cword_t _control;
        virtual void control_updated();
    public:
        void apply_control(cword_t control);
        virtual void clock_pulse();
        virtual void clock_inverted();
};

class ControlSignal {
        cword_t _mask;
        cword_t _bits;
    public:
        ControlSignal(cword_t mask, cword_t bits);
        ControlSignal(bool on);
        bool is_enabled(cword_t control);
};

class Register : public CpuDevice {
    private:
        uint8_t latched_primary;
        uint8_t latched_secondary;
        ControlSignal _out;
        ControlSignal _load;
        ControlSignal _tap_l;
        ControlSignal _tap_r;
    protected:
        void control_updated() override;
    public:
        Register(cword_t out, cword_t load, cword_t tap_l, cword_t tap_r);
        uint8_t read_tap();
        void clock_pulse() override;
        void clock_inverted() override;
};

class InstructionRegister : public CpuDevice {
    private:
        uint8_t latched_primary;
        uint8_t latched_secondary;
        ControlSignal _load;
    public:
        InstructionRegister(cword_t load);
        uint8_t read_tap();
        void clock_pulse() override;
        void clock_inverted() override;
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

class ProgramCounter : public CpuDevice
{
    private:
        uint16_t primary;
        uint16_t secondary;
        ControlSignal _out_cnt;
        ControlSignal _load;
    protected:
        void control_updated() override;
    public:
        ProgramCounter(cword_t out_cnt, cword_t load);
        void clock_pulse() override;
        void clock_inverted() override;
};

class StackPointer : public CpuDevice
{
    private:
        uint16_t val;
        ControlSignal _out;
        ControlSignal _load;
        ControlSignal _inc;
        ControlSignal _dec;
    protected:
        void control_updated() override;
    public:
        StackPointer(cword_t out, cword_t load, cword_t inc, cword_t dec);
        void clock_pulse() override;
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

class TransferReg
{
    private:
        uint16_t val;
        bool load_x_enabled;
        bool load_h_enabled;
        bool load_l_enabled;
        bool add_enabled;
    public:
        void set_out_x(bool enabled);
        void set_load_x(bool enabled);
        void set_out_h(bool enabled);
        void set_load_h(bool enabled);
        void set_out_l(bool enabled);
        void set_load_l(bool enabled);
        void set_add(bool enabled);
        void clock_pulse();
};


extern Register A;
extern Register B;
extern InstructionRegister IR;
extern ALU_AddSub AddSub;
extern ALU_AndOr AndOr;
extern ALU_ShiftSwap ShiftSwap;
extern ALU_XorNot XorNot;
extern FlagsReg Flags;
extern ProgramCounter PC;
extern StackPointer r_SP;
extern ProgramCounter LR;
extern Memory RAM;
extern AddressReg   DP;
extern TransferReg  TR;

#endif  /* DEVICES_H */
