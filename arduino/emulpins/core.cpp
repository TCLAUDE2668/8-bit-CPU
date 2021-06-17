#include "devices.h"
#include "op-defs.h"
#include "device_interface.h"

uint8_t main_bus;
uint16_t address_bus;
uint8_t alu_arg_l_bus;
uint8_t alu_arg_r_bus;

Register A(MPIN_A_OUT_BITS,
           MPIN_A_LOAD_BITS,
           MPIN_A_ALU_L_BITS,
           MPIN_A_ALU_R_BITS);

Register B(MPIN_B_OUT_BITS,
           MPIN_B_LOAD_BITS,
           MPIN_B_ALU_L_BITS,
           MPIN_B_ALU_R_BITS);

Register C(MPIN_C_OUT_BITS,
           MPIN_C_LOAD_BITS,
           MPIN_C_ALU_L_BITS,
           MPIN_C_ALU_R_BITS);

Register D(MPIN_D_OUT_BITS,
           MPIN_D_LOAD_BITS,
           MPIN_D_ALU_L_BITS,
           MPIN_D_ALU_R_BITS);

InstructionRegister IR(MPIN_IR_LOAD_BITS);

AddressReg DP;

uint32_t Control::write32(uint32_t control_word)
{

    A.apply_control(control_word);
    B.apply_control(control_word);
    C.apply_control(control_word);
    D.apply_control(control_word);

    IR.apply_control(control_word);

    PC.apply_control(control_word);
    r_SP.apply_control(control_word);
    LR.apply_control(control_word);
    TR.set_load_x((control_word & MUX_ADDRLOAD_MASK) == MPIN_TX_LOAD_BITS);
    TR.set_load_h((control_word & MUX_LOAD_MASK) == MPIN_TH_LOAD_BITS);
    TR.set_load_l((control_word & MUX_LOAD_MASK) == MPIN_TL_LOAD_BITS);

    TR.set_out_x((control_word & MUX_ADDROUT_MASK) == MPIN_TX_OUT_BITS);
    TR.set_out_h((control_word & MUX_OUT_MASK) == MPIN_TH_OUT_BITS);
    TR.set_out_l((control_word & MUX_OUT_MASK) == MPIN_TL_OUT_BITS);

    // RAM out should be enabled after registers had an opportunity to
    // put an address on the bus
    RAM.apply_control(control_word);

    Flags.set_calc((control_word & LPIN_F_CALC_BIT) == 0);
    Flags.set_load((control_word & MUX_LOAD_MASK) == MPIN_F_LOAD_BITS);
    Flags.set_out((control_word & MUX_OUT_MASK) == MPIN_F_OUT_BITS);


    AddSub.set_sub((control_word & HPIN_ADDSUB_ALT_BIT) != 0);
    AddSub.set_carry((control_word & HPIN_F_CARRY_BIT) != 0);


    AndOr.set_or((control_word & HPIN_ADDSUB_ALT_BIT) != 0);

    ShiftSwap.set_swap((control_word & HPIN_ADDSUB_ALT_BIT) != 0);
    ShiftSwap.set_carry((control_word & HPIN_F_CARRY_BIT) != 0);

    XorNot.set_not((control_word & HPIN_ADDSUB_ALT_BIT) != 0);

    TR.set_add((control_word & HPIN_TL_ADD_BIT) != 0);

    if ((control_word & MUX_ALUARGR_MASK) == (CTRL_DEFAULT & MUX_ALUARGR_MASK))
        alu_arg_r_bus = 0; // default value forces R input to 0

    // "pull" to current value (relevant to C and V flags)
    flags_bus = Flags.read_tap();

    // A input is always connected to one of registers



    // should be one of the latest, after registers' tap config
    AddSub.set_out((control_word & MUX_OUT_MASK) == MPIN_ADDSUB_OUT_BITS);
    AndOr.set_out((control_word & MUX_OUT_MASK) == MPIN_ANDOR_OUT_BITS);
    ShiftSwap.set_out((control_word & MUX_OUT_MASK) == MPIN_SHIFTSWAP_OUT_BITS);
    XorNot.set_out((control_word & MUX_OUT_MASK) == MPIN_XORNOT_OUT_BITS);

    return 0;
}

void Clock::pulse()
{
    A.clock_pulse();
    B.clock_pulse();
    C.clock_pulse();
    D.clock_pulse();
    IR.clock_pulse();
    Flags.clock_pulse();
    PC.clock_pulse();
    r_SP.clock_pulse();
    LR.clock_pulse();
    RAM.clock_pulse();
    TR.clock_pulse();
}

void InvClock::pulse()
{
    A.clock_inverted();
    B.clock_inverted();
    C.clock_inverted();
    D.clock_inverted();
    IR.clock_inverted();
    Flags.clock_inverted();
    PC.clock_inverted();
    LR.clock_inverted();
}
