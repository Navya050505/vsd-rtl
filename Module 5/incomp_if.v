module incomp_if(
    input a,
    input b,
    input sel,
    output reg y
);

always @(*) begin
    if (sel)
        y = a;
    // No else statement — intentionally incomplete
end

endmodule