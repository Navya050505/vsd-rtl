module incomp_if2(
    input a,
    input b,
    input sel,
    output reg y
);

always @(*) begin
    if (sel)
        y = a;
    else if (!sel)
        y = b;
end

endmodule