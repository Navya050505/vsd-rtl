module dff_submodule(input clk, input d, output reg q);

always @(posedge clk)
    q <= d;

endmodule

module top_hierarchical(input clk, input d, output q);

dff_submodule u1 (
    .clk(clk),
    .d(d),
    .q(q)
);

endmodule