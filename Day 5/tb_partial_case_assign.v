module tb_partial_case_assign;

reg [1:0] sel;
reg a, b, c;
wire y;

partial_case_assign uut (
    .sel(sel),
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin
    $dumpfile("partial_case_assign.vcd");
    $dumpvars(0, tb_partial_case_assign);

    a = 0;
    b = 1;
    c = 0;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule