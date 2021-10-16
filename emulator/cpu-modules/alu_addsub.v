module alu_addsub (
    input outn,
    input sub,
    input [7:0] arg_l,
    input [7:0] arg_r,
    input cin,
    output [7:0] bus,
    output cout,
    output vout);

    xor_86p xor_flags(.a4(xor_h.y[3]), .a3(arg_l[7]), .a2(cin), .a1(add_h.cout), .b4(add_h.s[3]), .b3(add_h.s[3]), .b2(sub), .b1(sub), .y1(cout));
    and_08p and_v(.a1(xor_flags.y3), .b1(xor_flags.y4), .y1(vout));

    xor_86b xor_l(.a(arg_r[3:0]), .b({sub, sub, sub, sub}));
    adder_283 add_l(.a(arg_l[3:0]), .b(xor_l.y), .cin(xor_flags.y2));

    xor_86b xor_h(.a(arg_r[7:4]), .b({sub, sub, sub, sub}));
    adder_283 add_h(.a(arg_l[7:4]), .b(xor_h.y), .cin(add_l.cout));

    buffer_245 bus_buf(.oen(outn), .dir(1'b1), .a({add_h.s, add_l.s}), .b(bus));

endmodule
