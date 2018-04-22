
module NCO1 (
	clk,
	clken,
	phi_inc_i,
	fsin_o,
	out_valid,
	reset_n);	

	input		clk;
	input		clken;
	input	[29:0]	phi_inc_i;
	output	[13:0]	fsin_o;
	output		out_valid;
	input		reset_n;
endmodule
