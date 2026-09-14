module blocking_caveat(input a, input b, output reg y);
always @(*) begin
    y = a;
    y = b;
end
endmodule