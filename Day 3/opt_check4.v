module opt_check4(input a, input b, output y);
assign y = a ? b : ~b;
endmodule