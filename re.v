
module re(
	input wire		clk,
	input wire		pause,
	input wire	[7:0] in_data,
	output reg	[7:0] out_data
	);
	always @(posedge clk) begin
		if (pause) begin
			
		end
		else begin
		out_data <= in_data;
		end
	end
endmodule