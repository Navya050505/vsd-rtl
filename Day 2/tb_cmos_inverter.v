module tb_cmos_inverter;

reg a;
wire y;

cmos_inverter uut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("cmos_inverter.vcd");
    $dumpvars(0, tb_cmos_inverter);

    a = 0; #10;
    a = 1; #10;
    a = 0; #10;
    a = 1; #10;

    $finish;
end

endmodule