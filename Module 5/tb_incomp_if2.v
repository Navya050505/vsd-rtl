module tb_incomp_if2;

reg a, b, sel;
wire y;

incomp_if2 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("incomp_if2.vcd");
    $dumpvars(0, tb_incomp_if2);

    a = 0;
    b = 1;

    sel = 0; #10;
    sel = 1; #10;
    a = 1; #10;
    sel = 0; #10;

    $finish;
end

endmodule