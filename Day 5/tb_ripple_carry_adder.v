module tb_Ripple_Carry_Adder;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

Ripple_Carry_Adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("Ripple_Carry_Adder.vcd");
    $dumpvars(0, tb_Ripple_Carry_Adder);

    a = 4'b0000; b = 4'b0000; cin = 0; #10;
    a = 4'b0101; b = 4'b0011; cin = 0; #10;
    a = 4'b1111; b = 4'b0001; cin = 0; #10;
    a = 4'b1010; b = 4'b0101; cin = 1; #10;

    $finish;
end

endmodule