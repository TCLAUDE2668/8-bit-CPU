`define assert(signal, value) if (signal !== value) begin $display("ASSERTION FAILED in %m: signal != value, was %b", signal); $fatal; end
`define tick(signal, times ) repeat (times) begin signal <= ~signal; #5; end