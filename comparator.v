`include "array_pack_unpack.v"
module comparator(
//	input wire [11:0] mad[15:0],
	input wire [191:0] mad_12_16_in,
	input wire	clk,
	input wire	compare,//决定是否要进行比较
	//input wire	[3:0]mv_horizontal,
	input wire	[3:0]mv_vertical,//输入的横纵坐标
//	output	reg[11:0] min,
	output	reg [3:0] mvx,
	output	reg [3:0] mvy//输出的横纵坐标
	);


	wire [11:0] mad[15:0];

	
	`UNPACK_ARRAY(12,16,mad,mad_12_16_in)
	
	integer	i;
	reg [11:0]min; //如果min输出的话则删掉这一行点亮上面那一行。
	
	always @(posedge clk) begin
		if (compare) begin			
			if (mv_vertical==0) begin//如果输入的是第一行
				min<=mad[0];
				mvx<=0;
				mvy<=mv_vertical;
				for(i=1;i<16;i=i+1)begin
				if (mad[i]<min) begin
					min<=mad[i];
					mvx<=i;
					mvy<=mv_vertical;
				end
				end
			end
			else for(i=0;i<16;i=i+1)begin
				if (mad[i]<min) begin
					min<=mad[i];
					mvx<=i;
					mvy<=mv_vertical;
				end
			end	
		end	
	end
endmodule
