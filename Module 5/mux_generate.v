module mux_generate(
    input  [3:0] a,
    input  [3:0] b,
    input        sel,
    output [3:0] y
);

genvar i;

generate
    for (i = 0; i < 4; i = i + 1) begin : mux_gen
        assign y[i] = sel ? b[i] : a[i];
    end
endgenerate

endmodule