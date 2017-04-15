module dmStore(
		input wire			clk,
		//input wire	[20:0]	addr,
		input wire 	[3:0]	mvx,
		input wire 	[3:0]	mvy
		);
	reg [20:0]	addr;
	reg [3:0] mem [2097151:0][1:0];  // 32-bit memory with 128 entries

	initial begin
		addr <= 0;
	end

	always @(posedge clk) begin
		//if (wr) begin
			mem[addr][0] <= mvx;
			mem[addr][1] <= mvy;
		//end
	end

	always @(posedge clk) begin
		addr <= addr+1;
	end

endmodule