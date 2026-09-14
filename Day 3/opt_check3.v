module opt_check3(input a, input b, input c, output y);
assign y = a ? (b & c) : 1'b0;
endmodule