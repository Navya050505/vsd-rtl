module tb_blocking_caveat;
reg a,b;
wire y;
blocking_caveat uut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("blocking_caveat.vcd");
$dumpvars(0,tb_blocking_caveat);
a=0;b=0;#10;
a=1;b=0;#10;
a=0;b=1;#10;
a=1;b=1;#10;
$finish;
end
endmodule