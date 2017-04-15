module dmref(
		input wire			clk,
		input wire	[10:0]	addr_0, addr_1,
		input wire			rd,
		output reg 	[7:0]	rdata00,
		output reg 	[7:0]	rdata01,
		output reg 	[7:0]	rdata02,
		output reg 	[7:0]	rdata03,
		output reg 	[7:0]	rdata10,
		output reg 	[7:0]	rdata11,
		output reg 	[7:0]	rdata12,
		output reg 	[7:0]	rdata13,
		output reg 	[7:0]	rdata20,
		output reg 	[7:0]	rdata21,
		output reg 	[7:0]	rdata22,
		output reg 	[7:0]	rdata23,
		output reg 	[7:0]	rdata30,
		output reg 	[7:0]	rdata31,
		output reg 	[7:0]	rdata32,
		output reg 	[7:0]	rdata33
		);
	//addr是需要的块的第一个点坐标
	reg [7:0] mem [1919:0][1079:0];  
	always @(posedge clk ) begin
		if(rd)
		begin
		rdata00<=mem[addr_0][addr_1];
		rdata01<=mem[addr_0][addr_1+1];
		rdata02<=mem[addr_0][addr_1+2];
		rdata03<=mem[addr_0][addr_1+3];
		rdata10<=mem[addr_0+1][addr_1];
		rdata11<=mem[addr_0+1][addr_1+1];
		rdata12<=mem[addr_0+1][addr_1+2];
		rdata13<=mem[addr_0+1][addr_1+3];
		rdata20<=mem[addr_0+2][addr_1];
		rdata21<=mem[addr_0+2][addr_1+1];
		rdata22<=mem[addr_0+2][addr_1+2];
		rdata23<=mem[addr_0+2][addr_1+3];
		rdata30<=mem[addr_0+3][addr_1];
		rdata31<=mem[addr_0+3][addr_1+1];
		rdata32<=mem[addr_0+3][addr_1+2];
		rdata33<=mem[addr_0+3][addr_1+3];

		end
	end

	//assign rdata = mem[addr][31:0];
	// During a write, avoid the one cycle delay by reading from 'wdata'

endmodule