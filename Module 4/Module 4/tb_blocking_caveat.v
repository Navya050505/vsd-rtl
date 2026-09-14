module tb_blocking_caveat;
reg a, b, c;
wire d;

blocking_caveat uut(.a(a), .b(b), .c(c), .d(d));

initial begin
    $dumpfile("blocking_caveat.vcd");
    $dumpvars(0, tb_blocking_caveat);

    a=0; b=0; c=0; #10;
    a=1; b=0; c=1; #10;
    a=0; b=1; c=1; #10;
    a=1; b=1; c=1; #10;

    $finish;
end
endmodule