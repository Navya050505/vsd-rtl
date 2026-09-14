module tb_incomp_if;

reg a, b, sel;
wire y;

incomp_if uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("incomp_if.vcd");
    $dumpvars(0, tb_incomp_if);

    a = 0; b = 1;

    sel = 0; #10;
    sel = 1; #10;
    a = 1; #10;
    sel = 0; #10;

    $finish;
end

endmodule