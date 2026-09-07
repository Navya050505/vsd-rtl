module tb_mux_generate;

reg [3:0] a, b;
reg sel;
wire [3:0] y;

mux_generate uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux_generate.vcd");
    $dumpvars(0, tb_mux_generate);

    a = 4'b1010;
    b = 4'b0101;

    sel = 0; #10;
    sel = 1; #10;

    a = 4'b1111;
    b = 4'b0000;

    sel = 0; #10;
    sel = 1; #10;

    $finish;
end

endmodule