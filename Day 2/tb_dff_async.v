module tb_dff_async;

reg clk, reset, d;
wire q;

dff_async uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

initial begin
    $dumpfile("dff_async.vcd");
    $dumpvars(0, tb_dff_async);

    clk = 0;
    reset = 1;
    d = 0;

    #10 reset = 0;
    #10 d = 1;
    #10 d = 0;
    #10 reset = 1;
    #10 reset = 0;
    #10 d = 1;

    #10 $finish;
end

always #5 clk = ~clk;

endmodule