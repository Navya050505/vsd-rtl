module tb_ternaryoperator_mux;
reg i0,i1,sel;
wire y;
ternaryoperator_mux uut(.i0(i0),.i1(i1),.sel(sel),.y(y));
initial begin
$dumpfile("ternaryoperator_mux.vcd");
$dumpvars(0,tb_ternaryoperator_mux);
i0=0;i1=1;sel=0;#10;
sel=1;#10;
i0=1;i1=0;sel=0;#10;
sel=1;#10;
$finish;
end
endmodule