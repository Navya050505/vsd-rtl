module opt_check(input a, input b, output y);
assign y = a ? b : 1'b0;
endmodule