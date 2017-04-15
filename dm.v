
module dm(
		input wire			clk,
		input wire	[10:0]	addr_0,addr_1,
		input wire			rd,
		output reg 	[7:0]	rdata_0,
		output reg 	[7:0]	rdata_1,
		output reg 	[7:0]	rdata_2,
		output reg 	[7:0]	rdata_3,
		output reg 	[7:0]	rdata_4,
		output reg 	[7:0]	rdata_5,
		output reg 	[7:0]	rdata_6,
		output reg 	[7:0]	rdata_7,
		output reg 	[7:0]	rdata_8,
		output reg 	[7:0]	rdata_9,
		output reg 	[7:0]	rdata_10,
		output reg 	[7:0]	rdata_11,
		output reg 	[7:0]	rdata_12,
		output reg 	[7:0]	rdata_13,
		output reg 	[7:0]	rdata_14,
		output reg 	[7:0]	rdata_15,
		output reg 	[7:0]	rdata_16,
		output reg 	[7:0]	rdata_17,
		output reg 	[7:0]	rdata_18
		);
	//addr是需要的（搜索区域内的目标行）的第一个点坐标
	reg [7:0] mem [1935:0][1095:0];  //1920+16,1080+16
	always @(posedge clk ) begin
		if(rd)
		begin
		rdata_0<=mem[addr_0][addr_1];
		rdata_1<=mem[addr_0][addr_1+1];
		rdata_2<=mem[addr_0][addr_1+2];
		rdata_3<=mem[addr_0][addr_1+3];
		rdata_4<=mem[addr_0][addr_1+4];
		rdata_5<=mem[addr_0][addr_1+5];
		rdata_6<=mem[addr_0][addr_1+6];
		rdata_7<=mem[addr_0][addr_1+7];
		rdata_8<=mem[addr_0][addr_1+8];
		rdata_9<=mem[addr_0][addr_1+9];
		rdata_10<=mem[addr_0][addr_1+10];
		rdata_11<=mem[addr_0][addr_1+11];
		rdata_12<=mem[addr_0][addr_1+12];
		rdata_13<=mem[addr_0][addr_1+13];
		rdata_14<=mem[addr_0][addr_1+14];
		rdata_15<=mem[addr_0][addr_1+15];
		rdata_16<=mem[addr_0][addr_1+16];
		rdata_17<=mem[addr_0][addr_1+17];
		rdata_18<=mem[addr_0][addr_1+18];
		end
	end

	//assign rdata = mem[addr][31:0];
	// During a write, avoid the one cycle delay by reading from 'wdata'

endmodule