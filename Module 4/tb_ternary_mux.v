module tb_ternary_mux;

reg a, b, sel;
wire y;

ternary_mux uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("ternary_mux.vcd");
    $dumpvars(0, tb_ternary_mux);

    a = 0; b = 1;

    sel = 0; #10;
    sel = 1; #10;

    a = 1; b = 0;

    sel = 0; #10;
    sel = 1; #10;

    $finish;
end

endmodule