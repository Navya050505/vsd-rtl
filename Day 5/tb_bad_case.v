module tb_bad_case;

reg [1:0] sel;
reg a, b, c;
wire y;

bad_case uut (
    .sel(sel),
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin
    $dumpfile("bad_case.vcd");
    $dumpvars(0, tb_bad_case);

    a = 0; b = 1; c = 0;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule