module tb_demux_case;

reg din;
reg [1:0] sel;
wire [3:0] y;

demux_case uut (
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("demux_case.vcd");
    $dumpvars(0, tb_demux_case);

    din = 1'b1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    din = 1'b0;
    sel = 2'b00; #10;

    $finish;
end

endmodule