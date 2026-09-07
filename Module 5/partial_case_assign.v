module partial_case_assign(
    input  [1:0] sel,
    input        a,
    input        b,
    input        c,
    output reg   y
);

always @(*) begin
    case (sel)
        2'b00: y = a;
        2'b01: y = b;
        2'b10: y = c;
        // 2'b11 is intentionally not assigned
    endcase
end

endmodule