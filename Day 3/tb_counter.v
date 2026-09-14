module tb_counter;

reg clk;
reg reset;
wire [3:0] count;

counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, tb_counter);

    clk = 0;
    reset = 1;

    #10 reset = 0;
    #100 $finish;
end

always #5 clk = ~clk;

endmodule