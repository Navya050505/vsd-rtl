module tb_mux;

reg i0, i1, sel;
wire y;

mux uut (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, tb_mux);

    i0 = 0; i1 = 1; sel = 0; #10;
    i0 = 0; i1 = 1; sel = 1; #10;
    i0 = 1; i1 = 0; sel = 0; #10;
    i0 = 1; i1 = 0; sel = 1; #10;

    $finish;
end

endmodule