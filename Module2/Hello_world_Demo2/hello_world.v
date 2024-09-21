`timescale 1 ps/1 ps
module hello_world(
	//clock
	input MAX10_CLK1_50,
	input [1:0] KEY,
	//switches and led
	output [1:0] LEDR
	);
	
	//assign LEDR[0] = ~KEY[0];
	
	nios_setup_v2 u0(
	.clk_clk		(MAX10_CLK1_50),
	.reset_reset_n (1'b1),
	.pio_irq_external_connection_export(KEY[1:0]),
	.switch_external_connection_export(KEY[1:0]),
	);
endmodule
