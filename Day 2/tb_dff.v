module tb_dff;

reg clk, d;
wire q;

dff uut (
    .clk(clk),
    .d(d),
    .q(q)
);

initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, tb_dff);

    clk = 0;
    d = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;

    #10 $finish;
end

always #5 clk = ~clk;

endmodule