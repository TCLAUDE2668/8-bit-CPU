module io_block (
    inout [7:0] main_bus,
    input clk,
    input reset,
    input out_rst,

    output reg [255:0] out_fmt,

    input [3:0] outctl,
    input [3:0] loadctl
);

    wire [7:0] io_bus;
    wire to_devn;
    wire from_devn;

    assign to_devn = load_mux.y[5];
    assign from_devn = out_mux.y[8];

    demux_16 load_mux(.a(loadctl));
    demux_16 out_mux(.a(outctl));

    io_control ctl(
        .main_bus(main_bus),
        .rst(reset),
        .clk(clk),
        .loadn(load_mux.y[4]),
        .from_devn(from_devn),
        .to_devn(to_devn),
        .io_bus(io_bus)
    );

    display_num ndisp(
        .main_bus(io_bus),
        .out_rst(out_rst),
        .clk(clk),
        .load_val(ctl.sel_x[0] == 1'b0 && ctl.sel_y[0] == 1'b0),
        .load_mode(ctl.sel_x[1] == 1'b0 && ctl.sel_y[0] == 1'b0),
        .reset(reset)
    );

    display_char cdisp(
        .main_bus(io_bus),
        .out_rst(out_rst),
        .clk(clk),
        .load_val(ctl.sel_x[4] == 1'b0 && ctl.sel_y[0] == 1'b0)
    );


    display_lcd lcd(
        .io_bus(io_bus),
        .out_rst(out_rst),
        .enable(!ctl.sel_y[1] && (clk || !from_devn)),
        .rnw(to_devn),
        .rs(ctl.sel_x[1])
    );

    always @(ndisp.out_fmt) begin
        out_fmt <= ndisp.out_fmt;
    end

    always @(cdisp.out_fmt) begin
        out_fmt <= cdisp.out_fmt;
    end

    always @(lcd.out_fmt) begin
        out_fmt <= lcd.out_fmt;
    end

    always @(posedge out_rst or posedge reset) begin
        out_fmt <= 160'bx;
    end

endmodule
