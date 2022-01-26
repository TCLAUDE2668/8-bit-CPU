#include "microcode.h"

const cword_t op_fetch[] = {0x15fd5889};

const struct op_microcode microcode[] PROGMEM = {

    /* 00 nop        */
    { .default_steps = {0x15ff58ff},},

    /* 01 ldi_A_imm  */
    { .default_steps = {0x15fd5809},},

    /* 02 ldi_B_imm  */
    { .default_steps = {0x15fd5819},},

    /* 03 ldi_C_imm  */
    { .default_steps = {0x15fd5829},},

    /* 04 ldi_D_imm  */
    { .default_steps = {0x15fd5839},},

    /* 05 ldi_F_imm  */
    { .default_steps = {0x15fd5879},},

    /* 06 lea_SP_addr */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d858ff},},

    /* 07 add_A_A    */
    { .default_steps = {0x15ff0005},},

    /* 08 add_A_B    */
    { .default_steps = {0x15ff0405},},

    /* 09 add_A_C    */
    { .default_steps = {0x15ff0805},},

    /* 0a add_A_D    */
    { .default_steps = {0x15ff0c05},},

    /* 0b add_B_A    */
    { .default_steps = {0x15ff0115},},

    /* 0c add_B_B    */
    { .default_steps = {0x15ff0515},},

    /* 0d add_B_C    */
    { .default_steps = {0x15ff0915},},

    /* 0e add_B_D    */
    { .default_steps = {0x15ff0d15},},

    /* 0f add_C_A    */
    { .default_steps = {0x15ff0225},},

    /* 10 add_C_B    */
    { .default_steps = {0x15ff0625},},

    /* 11 add_C_C    */
    { .default_steps = {0x15ff0a25},},

    /* 12 add_C_D    */
    { .default_steps = {0x15ff0e25},},

    /* 13 add_D_A    */
    { .default_steps = {0x15ff0335},},

    /* 14 add_D_B    */
    { .default_steps = {0x15ff0735},},

    /* 15 add_D_C    */
    { .default_steps = {0x15ff0b35},},

    /* 16 add_D_D    */
    { .default_steps = {0x15ff0f35},},

    /* 17 adc_A_A    */
    { .default_steps = {0x15ff0005},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8005},
          },
      },
    },

    /* 18 adc_A_B    */
    { .default_steps = {0x15ff0405},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8405},
          },
      },
    },

    /* 19 adc_A_C    */
    { .default_steps = {0x15ff0805},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8805},
          },
      },
    },

    /* 1a adc_A_D    */
    { .default_steps = {0x15ff0c05},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8c05},
          },
      },
    },

    /* 1b adc_B_A    */
    { .default_steps = {0x15ff0115},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8115},
          },
      },
    },

    /* 1c adc_B_B    */
    { .default_steps = {0x15ff0515},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8515},
          },
      },
    },

    /* 1d adc_B_C    */
    { .default_steps = {0x15ff0915},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8915},
          },
      },
    },

    /* 1e adc_B_D    */
    { .default_steps = {0x15ff0d15},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8d15},
          },
      },
    },

    /* 1f adc_C_A    */
    { .default_steps = {0x15ff0225},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8225},
          },
      },
    },

    /* 20 adc_C_B    */
    { .default_steps = {0x15ff0625},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8625},
          },
      },
    },

    /* 21 adc_C_C    */
    { .default_steps = {0x15ff0a25},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8a25},
          },
      },
    },

    /* 22 adc_C_D    */
    { .default_steps = {0x15ff0e25},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8e25},
          },
      },
    },

    /* 23 adc_D_A    */
    { .default_steps = {0x15ff0335},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8335},
          },
      },
    },

    /* 24 adc_D_B    */
    { .default_steps = {0x15ff0735},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8735},
          },
      },
    },

    /* 25 adc_D_C    */
    { .default_steps = {0x15ff0b35},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8b35},
          },
      },
    },

    /* 26 adc_D_D    */
    { .default_steps = {0x15ff0f35},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff8f35},
          },
      },
    },

    /* 27 sub_A_B    */
    { .default_steps = {0x15ff2405},},

    /* 28 sub_A_C    */
    { .default_steps = {0x15ff2805},},

    /* 29 sub_A_D    */
    { .default_steps = {0x15ff2c05},},

    /* 2a sub_B_A    */
    { .default_steps = {0x15ff2115},},

    /* 2b sub_B_C    */
    { .default_steps = {0x15ff2915},},

    /* 2c sub_B_D    */
    { .default_steps = {0x15ff2d15},},

    /* 2d sub_C_A    */
    { .default_steps = {0x15ff2225},},

    /* 2e sub_C_B    */
    { .default_steps = {0x15ff2625},},

    /* 2f sub_C_D    */
    { .default_steps = {0x15ff2e25},},

    /* 30 sub_D_A    */
    { .default_steps = {0x15ff2335},},

    /* 31 sub_D_B    */
    { .default_steps = {0x15ff2735},},

    /* 32 sub_D_C    */
    { .default_steps = {0x15ff2b35},},

    /* 33 sbb_A_B    */
    { .default_steps = {0x15ff2405},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa405},
          },
      },
    },

    /* 34 sbb_A_C    */
    { .default_steps = {0x15ff2805},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa805},
          },
      },
    },

    /* 35 sbb_A_D    */
    { .default_steps = {0x15ff2c05},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffac05},
          },
      },
    },

    /* 36 sbb_B_A    */
    { .default_steps = {0x15ff2115},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa115},
          },
      },
    },

    /* 37 sbb_B_C    */
    { .default_steps = {0x15ff2915},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa915},
          },
      },
    },

    /* 38 sbb_B_D    */
    { .default_steps = {0x15ff2d15},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffad15},
          },
      },
    },

    /* 39 sbb_C_A    */
    { .default_steps = {0x15ff2225},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa225},
          },
      },
    },

    /* 3a sbb_C_B    */
    { .default_steps = {0x15ff2625},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa625},
          },
      },
    },

    /* 3b sbb_C_D    */
    { .default_steps = {0x15ff2e25},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffae25},
          },
      },
    },

    /* 3c sbb_D_A    */
    { .default_steps = {0x15ff2335},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa335},
          },
      },
    },

    /* 3d sbb_D_B    */
    { .default_steps = {0x15ff2735},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffa735},
          },
      },
    },

    /* 3e sbb_D_C    */
    { .default_steps = {0x15ff2b35},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ffab35},
          },
      },
    },

    /* 3f and_A_B    */
    { .default_steps = {0x15ff0406},},

    /* 40 and_A_C    */
    { .default_steps = {0x15ff0806},},

    /* 41 and_A_D    */
    { .default_steps = {0x15ff0c06},},

    /* 42 and_B_A    */
    { .default_steps = {0x15ff0116},},

    /* 43 and_B_C    */
    { .default_steps = {0x15ff0916},},

    /* 44 and_B_D    */
    { .default_steps = {0x15ff0d16},},

    /* 45 and_C_A    */
    { .default_steps = {0x15ff0226},},

    /* 46 and_C_B    */
    { .default_steps = {0x15ff0626},},

    /* 47 and_C_D    */
    { .default_steps = {0x15ff0e26},},

    /* 48 and_D_A    */
    { .default_steps = {0x15ff0336},},

    /* 49 and_D_B    */
    { .default_steps = {0x15ff0736},},

    /* 4a and_D_C    */
    { .default_steps = {0x15ff0b36},},

    /* 4b or_A_B     */
    { .default_steps = {0x15ff2406},},

    /* 4c or_A_C     */
    { .default_steps = {0x15ff2806},},

    /* 4d or_A_D     */
    { .default_steps = {0x15ff2c06},},

    /* 4e or_B_A     */
    { .default_steps = {0x15ff2116},},

    /* 4f or_B_C     */
    { .default_steps = {0x15ff2916},},

    /* 50 or_B_D     */
    { .default_steps = {0x15ff2d16},},

    /* 51 or_C_A     */
    { .default_steps = {0x15ff2226},},

    /* 52 or_C_B     */
    { .default_steps = {0x15ff2626},},

    /* 53 or_C_D     */
    { .default_steps = {0x15ff2e26},},

    /* 54 or_D_A     */
    { .default_steps = {0x15ff2336},},

    /* 55 or_D_B     */
    { .default_steps = {0x15ff2736},},

    /* 56 or_D_C     */
    { .default_steps = {0x15ff2b36},},

    /* 57 xor_A_B    */
    { .default_steps = {0x15ff040a},},

    /* 58 xor_A_C    */
    { .default_steps = {0x15ff080a},},

    /* 59 xor_A_D    */
    { .default_steps = {0x15ff0c0a},},

    /* 5a xor_B_A    */
    { .default_steps = {0x15ff011a},},

    /* 5b xor_B_C    */
    { .default_steps = {0x15ff091a},},

    /* 5c xor_B_D    */
    { .default_steps = {0x15ff0d1a},},

    /* 5d xor_C_A    */
    { .default_steps = {0x15ff022a},},

    /* 5e xor_C_B    */
    { .default_steps = {0x15ff062a},},

    /* 5f xor_C_D    */
    { .default_steps = {0x15ff0e2a},},

    /* 60 xor_D_A    */
    { .default_steps = {0x15ff033a},},

    /* 61 xor_D_B    */
    { .default_steps = {0x15ff073a},},

    /* 62 xor_D_C    */
    { .default_steps = {0x15ff0b3a},},

    /* 63 not_A      */
    { .default_steps = {0x15ff380a},},

    /* 64 not_B      */
    { .default_steps = {0x15ff391a},},

    /* 65 not_C      */
    { .default_steps = {0x15ff3a2a},},

    /* 66 not_D      */
    { .default_steps = {0x15ff3b3a},},

    /* 67 clr_A      */
    { .default_steps = {0x15ff000a},},

    /* 68 clr_B      */
    { .default_steps = {0x15ff051a},},

    /* 69 clr_C      */
    { .default_steps = {0x15ff0a2a},},

    /* 6a clr_D      */
    { .default_steps = {0x15ff0f3a},},

    /* 6b inc_A      */
    { .default_steps = {0x15ff9805},},

    /* 6c inc_B      */
    { .default_steps = {0x15ff9915},},

    /* 6d inc_C      */
    { .default_steps = {0x15ff9a25},},

    /* 6e inc_D      */
    { .default_steps = {0x15ff9b35},},

    /* 6f dec_A      */
    { .default_steps = {0x15ffb805},},

    /* 70 dec_B      */
    { .default_steps = {0x15ffb915},},

    /* 71 dec_C      */
    { .default_steps = {0x15ffba25},},

    /* 72 dec_D      */
    { .default_steps = {0x15ffbb35},},

    /* 73 shr_A      */
    { .default_steps = {0x15ff1807},},

    /* 74 shr_B      */
    { .default_steps = {0x15ff1917},},

    /* 75 shr_C      */
    { .default_steps = {0x15ff1a27},},

    /* 76 shr_D      */
    { .default_steps = {0x15ff1b37},},

    /* 77 ror_A      */
    { .default_steps = {0x15ff1807},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff9807},
          },
      },
    },

    /* 78 ror_B      */
    { .default_steps = {0x15ff1917},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff9917},
          },
      },
    },

    /* 79 ror_C      */
    { .default_steps = {0x15ff1a27},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff9a27},
          },
      },
    },

    /* 7a ror_D      */
    { .default_steps = {0x15ff1b37},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15ff9b37},
          },
      },
    },

    /* 7b asr_A      */
    { .default_steps = {0x15ff18f0, 0x15ff1807},
      .f_alt = {
          /* mask: ---N value: ---N */
          { .mask = 0x01, .value = 0x01,
            .steps = {0x15ff18f0, 0x15ff9807},
          },
      },
    },

    /* 7c asr_B      */
    { .default_steps = {0x15ff18f1, 0x15ff1917},
      .f_alt = {
          /* mask: ---N value: ---N */
          { .mask = 0x01, .value = 0x01,
            .steps = {0x15ff18f1, 0x15ff9917},
          },
      },
    },

    /* 7d asr_C      */
    { .default_steps = {0x15ff18f2, 0x15ff1a27},
      .f_alt = {
          /* mask: ---N value: ---N */
          { .mask = 0x01, .value = 0x01,
            .steps = {0x15ff18f2, 0x15ff9a27},
          },
      },
    },

    /* 7e asr_D      */
    { .default_steps = {0x15ff18f3, 0x15ff1b37},
      .f_alt = {
          /* mask: ---N value: ---N */
          { .mask = 0x01, .value = 0x01,
            .steps = {0x15ff18f3, 0x15ff9b37},
          },
      },
    },

    /* 7f swap_A     */
    { .default_steps = {0x15ff3807},},

    /* 80 swap_B     */
    { .default_steps = {0x15ff3917},},

    /* 81 swap_C     */
    { .default_steps = {0x15ff3a27},},

    /* 82 swap_D     */
    { .default_steps = {0x15ff3b37},},

    /* 83 cmp_A_B    */
    { .default_steps = {0x15ff24f5},},

    /* 84 cmp_A_C    */
    { .default_steps = {0x15ff28f5},},

    /* 85 cmp_A_D    */
    { .default_steps = {0x15ff2cf5},},

    /* 86 cmp_B_A    */
    { .default_steps = {0x15ff21f5},},

    /* 87 cmp_B_C    */
    { .default_steps = {0x15ff29f5},},

    /* 88 cmp_B_D    */
    { .default_steps = {0x15ff2df5},},

    /* 89 cmp_C_A    */
    { .default_steps = {0x15ff22f5},},

    /* 8a cmp_C_B    */
    { .default_steps = {0x15ff26f5},},

    /* 8b cmp_C_D    */
    { .default_steps = {0x15ff2ef5},},

    /* 8c cmp_D_A    */
    { .default_steps = {0x15ff23f5},},

    /* 8d cmp_D_B    */
    { .default_steps = {0x15ff27f5},},

    /* 8e cmp_D_C    */
    { .default_steps = {0x15ff2bf5},},

    /* 8f mov_A_B    */
    { .default_steps = {0x15ff5801},},

    /* 90 mov_A_C    */
    { .default_steps = {0x15ff5802},},

    /* 91 mov_A_D    */
    { .default_steps = {0x15ff5803},},

    /* 92 mov_B_A    */
    { .default_steps = {0x15ff5810},},

    /* 93 mov_B_C    */
    { .default_steps = {0x15ff5812},},

    /* 94 mov_B_D    */
    { .default_steps = {0x15ff5813},},

    /* 95 mov_C_A    */
    { .default_steps = {0x15ff5820},},

    /* 96 mov_C_B    */
    { .default_steps = {0x15ff5821},},

    /* 97 mov_C_D    */
    { .default_steps = {0x15ff5823},},

    /* 98 mov_D_A    */
    { .default_steps = {0x15ff5830},},

    /* 99 mov_D_B    */
    { .default_steps = {0x15ff5831},},

    /* 9a mov_D_C    */
    { .default_steps = {0x15ff5832},},

    /* 9b out_A      */
    { .default_steps = {0x15ff5860},},

    /* 9c out_B      */
    { .default_steps = {0x15ff5861},},

    /* 9d out_C      */
    { .default_steps = {0x15ff5862},},

    /* 9e out_D      */
    { .default_steps = {0x15ff5863},},

    /* 9f cout_A     */
    { .default_steps = {0x15ff58a0},},

    /* a0 cout_B     */
    { .default_steps = {0x15ff58a1},},

    /* a1 cout_C     */
    { .default_steps = {0x15ff58a2},},

    /* a2 cout_D     */
    { .default_steps = {0x15ff58a3},},

    /* a3 st_addr_A  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f85890},},

    /* a4 st_addr_B  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f85891},},

    /* a5 st_addr_C  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f85892},},

    /* a6 st_addr_D  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f85893},},

    /* a7 stx_addr_A_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa5890},},

    /* a8 stx_addr_A_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa5891},},

    /* a9 stx_addr_A_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa5892},},

    /* aa stx_addr_A_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa5893},},

    /* ab stx_addr_B_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa5890},},

    /* ac stx_addr_B_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa5891},},

    /* ad stx_addr_B_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa5892},},

    /* ae stx_addr_B_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa5893},},

    /* af stx_addr_C_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa5890},},

    /* b0 stx_addr_C_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa5891},},

    /* b1 stx_addr_C_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa5892},},

    /* b2 stx_addr_C_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa5893},},

    /* b3 stx_addr_D_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa5890},},

    /* b4 stx_addr_D_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa5891},},

    /* b5 stx_addr_D_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa5892},},

    /* b6 stx_addr_D_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa5893},},

    /* b7 ld_A_addr  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f81809},},

    /* b8 ld_B_addr  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f81819},},

    /* b9 ld_C_addr  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f81829},},

    /* ba ld_D_addr  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15f81839},},

    /* bb ldx_A_addr_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa1809},},

    /* bc ldx_A_addr_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa1809},},

    /* bd ldx_A_addr_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa1809},},

    /* be ldx_A_addr_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa1809},},

    /* bf ldx_B_addr_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa1819},},

    /* c0 ldx_B_addr_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa1819},},

    /* c1 ldx_B_addr_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa1819},},

    /* c2 ldx_B_addr_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa1819},},

    /* c3 ldx_C_addr_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa1829},},

    /* c4 ldx_C_addr_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa1829},},

    /* c5 ldx_C_addr_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa1829},},

    /* c6 ldx_C_addr_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa1829},},

    /* c7 ldx_D_addr_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa1839},},

    /* c8 ldx_D_addr_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa1839},},

    /* c9 ldx_D_addr_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa1839},},

    /* ca ldx_D_addr_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa1839},},

    /* cb tstx_addr_A */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f0, 0x15fa18f9},},

    /* cc tstx_addr_B */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f1, 0x15fa18f9},},

    /* cd tstx_addr_C */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f2, 0x15fa18f9},},

    /* ce tstx_addr_D */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15d058f3, 0x15fa18f9},},

    /* cf ljmp_addr  */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},},

    /* d0 beql_addr  */
    { .default_steps = {0x15fd58ff, 0x15fd58ff},
      .f_alt = {
          /* mask: --Z- value: --Z- */
          { .mask = 0x02, .value = 0x02,
            .steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},
          },
      },
    },

    /* d1 bnel_addr  */
    { .default_steps = {0x15fd58ff, 0x15fd58ff},
      .f_alt = {
          /* mask: --Z- value: ---- */
          { .mask = 0x02, .value = 0x00,
            .steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},
          },
      },
    },

    /* d2 bcsl_addr  */
    { .default_steps = {0x15fd58ff, 0x15fd58ff},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},
          },
      },
    },

    /* d3 bccl_addr  */
    { .default_steps = {0x15fd58ff, 0x15fd58ff},
      .f_alt = {
          /* mask: -C-- value: ---- */
          { .mask = 0x04, .value = 0x00,
            .steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},
          },
      },
    },

    /* d4 bmil_addr  */
    { .default_steps = {0x15fd58ff, 0x15fd58ff},
      .f_alt = {
          /* mask: ---N value: ---N */
          { .mask = 0x01, .value = 0x01,
            .steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},
          },
      },
    },

    /* d5 bpll_addr  */
    { .default_steps = {0x15fd58ff, 0x15fd58ff},
      .f_alt = {
          /* mask: ---N value: ---- */
          { .mask = 0x01, .value = 0x00,
            .steps = {0x15fd58b9, 0x15fd58c9, 0x15e858ff},
          },
      },
    },

    /* d6 push_A     */
    { .default_steps = {0x157f58ff, 0x15fb5890},},

    /* d7 push_B     */
    { .default_steps = {0x157f58ff, 0x15fb5891},},

    /* d8 push_C     */
    { .default_steps = {0x157f58ff, 0x15fb5892},},

    /* d9 push_D     */
    { .default_steps = {0x157f58ff, 0x15fb5893},},

    /* da pushf      */
    { .default_steps = {0x157f58ff, 0x15fb5894},},

    /* db push_LR    */
    { .default_steps = {0x154458ff, 0x157b589c, 0x15fb589b},},

    /* dc pop_A      */
    { .default_steps = {0x15bb5809},},

    /* dd pop_B      */
    { .default_steps = {0x15bb5819},},

    /* de pop_C      */
    { .default_steps = {0x15bb5829},},

    /* df pop_D      */
    { .default_steps = {0x15bb5839},},

    /* e0 popf       */
    { .default_steps = {0x15bb5879},},

    /* e1 pop_LR     */
    { .default_steps = {0x15bb58b9, 0x15bb58c9, 0x15e058ff},},

    /* e2 callf_addr */
    { .default_steps = {0x15fd58b9, 0x15fd58c9, 0x15e558ff, 0x15e858ff},},

    /* e3 ret        */
    { .default_steps = {0x15ec58ff},},

    /* e4 brk        */
    { .default_steps = {0x1dff58ff},},

    /* e5 hlt        */
    { .default_steps = {0x11ff58ff},},

    /* e6 ldr_A_SP_imm */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa1809},},

    /* e7 ldr_B_SP_imm */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa1819},},

    /* e8 ldr_C_SP_imm */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa1829},},

    /* e9 ldr_D_SP_imm */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa1839},},

    /* ea str_SP_imm_A */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa5890},},

    /* eb str_SP_imm_B */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa5891},},

    /* ec str_SP_imm_C */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa5892},},

    /* ed str_SP_imm_D */
    { .default_steps = {0x15fd58b9, 0x15d358fb, 0x15fa5893},},

    /* ee xprefix    */
    { .default_steps = {0x17fd5889, 0x15ff58ff},},

    /* ef rjmp_imm   */
    { .default_steps = {0x15d558f9, 0x15ea58ff},},

    /* f0 beqr_imm   */
    { .default_steps = {0x15fd58ff},
      .f_alt = {
          /* mask: --Z- value: --Z- */
          { .mask = 0x02, .value = 0x02,
            .steps = {0x15d558f9, 0x15ea58ff},
          },
      },
    },

    /* f1 bner_imm   */
    { .default_steps = {0x15fd58ff},
      .f_alt = {
          /* mask: --Z- value: ---- */
          { .mask = 0x02, .value = 0x00,
            .steps = {0x15d558f9, 0x15ea58ff},
          },
      },
    },

    /* f2 bcsr_imm   */
    { .default_steps = {0x15fd58ff},
      .f_alt = {
          /* mask: -C-- value: -C-- */
          { .mask = 0x04, .value = 0x04,
            .steps = {0x15d558f9, 0x15ea58ff},
          },
      },
    },

    /* f3 bccr_imm   */
    { .default_steps = {0x15fd58ff},
      .f_alt = {
          /* mask: -C-- value: ---- */
          { .mask = 0x04, .value = 0x00,
            .steps = {0x15d558f9, 0x15ea58ff},
          },
      },
    },

    /* f4 bmir_imm   */
    { .default_steps = {0x15fd58ff},
      .f_alt = {
          /* mask: ---N value: ---N */
          { .mask = 0x01, .value = 0x01,
            .steps = {0x15d558f9, 0x15ea58ff},
          },
      },
    },

    /* f5 bplr_imm   */
    { .default_steps = {0x15fd58ff},
      .f_alt = {
          /* mask: ---N value: ---- */
          { .mask = 0x01, .value = 0x00,
            .steps = {0x15d558f9, 0x15ea58ff},
          },
      },
    },

    /* f6 rcall_imm  */
    { .default_steps = {0x15d558f9, 0x15e558ff, 0x15ea58ff},},

    /* f7 padding8   */
    { .default_steps = {0x15ff58ff},},

    /* f8 padding9   */
    { .default_steps = {0x15ff58ff},},

    /* f9 padding10  */
    { .default_steps = {0x15ff58ff},},

    /* fa padding11  */
    { .default_steps = {0x15ff58ff},},

    /* fb padding12  */
    { .default_steps = {0x15ff58ff},},

    /* fc padding13  */
    { .default_steps = {0x15ff58ff},},

    /* fd padding14  */
    { .default_steps = {0x15ff58ff},},

    /* fe padding15  */
    { .default_steps = {0x15ff58ff},},

    /* ff padding16  */
    { .default_steps = {0x15ff58ff},},

    /* 100 padding17  */
    { .default_steps = {0x15ff58ff},},

    /* 101 padding18  */
    { .default_steps = {0x15ff58ff},},

    /* 102 padding19  */
    { .default_steps = {0x15ff58ff},},

    /* 103 padding20  */
    { .default_steps = {0x15ff58ff},},

    /* 104 padding21  */
    { .default_steps = {0x15ff58ff},},

    /* 105 padding22  */
    { .default_steps = {0x15ff58ff},},

    /* 106 padding23  */
    { .default_steps = {0x15ff58ff},},

    /* 107 padding24  */
    { .default_steps = {0x15ff58ff},},

    /* 108 padding25  */
    { .default_steps = {0x15ff58ff},},

    /* 109 padding26  */
    { .default_steps = {0x15ff58ff},},

    /* 10a padding27  */
    { .default_steps = {0x15ff58ff},},

    /* 10b padding28  */
    { .default_steps = {0x15ff58ff},},

    /* 10c padding29  */
    { .default_steps = {0x15ff58ff},},

    /* 10d dummyext_imm */
    { .default_steps = {0x15ff58ff, 0x15ff58ff, 0x15fd5809},},
};
