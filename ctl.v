module ctl(
	input wire clk,
	output 	reg	rd1,rd2,
	output	reg	[10:0]	addr1_0, addr1_1,//这个是现在工作的图像（1920+16.1080+16）
	output	reg	[10:0]	addr2_0, addr2_1,//这个是参考点（1920,1080）
	//output	reg	[3:0]	mv_horizontal,
	output	reg	[3:0]	mv_vertical,
	output	reg	compare
	);
	//counter
	//reg [11:0]cnt;
	reg	[4:0] cnt_inloop;
	//addr generator
	/*always @(posedge clk) begin//这个是不是还需要？
		if (cnt=1920) begin
			cnt<=0;
			addr1_1<=addr1_1+1;//到了尽头则到下一行
			addr1_0<=0;//回到第一列
		end
		else  begin
			cnt+=1;
		end
	end */

	always @(posedge clk) begin
		if (cnt_inloop==19) begin//第20个周期加载参考块，这里rd信号还没写，可以放在另一个always里
			cnt_inloop<=0;
			if (addr2_0==1916) begin
				addr2_0<=0;	
				addr2_1<=addr2_1+4;//换到下一行首位块
				//
				//addr1_0<=0;
				//addr1_1<=addr2_1+4;
			end
			else begin
				addr2_0<=addr2_0+4;//否则移到同一行下一个块
				//addr1_0<=addr2_0+4;//参考块与比较区域上的块起始点相对位置一样
				//addr1_1<=addr2_1;
			end			
		end
		else  begin
			cnt_inloop<=cnt_inloop+1;
			//addr1_1<=addr1_1+1;
		end
	end


	always @(posedge clk) begin
		if (cnt_inloop==0) begin //???????
				addr1_0<=addr2_0;
				addr1_1<=addr2_1;			
		end
		if (cnt_inloop != 19) begin
			addr1_1<=addr1_1+1;
		end
	end




	always @(posedge clk ) begin
		if (cnt_inloop==0 || cnt_inloop==1 || cnt_inloop==2 || cnt_inloop==19) begin
			compare<=0;
		end
		else begin
			compare<=1; //需不需要在前一个周期吧compare置好？否则是否存在竞争冒险
		end
	end

	always @(posedge clk) begin
		case(cnt_inloop)
		0:;
		1:;
		2:;
		3:mv_vertical<=0;
		4:mv_vertical<=1;
		5:mv_vertical<=2;
		6:mv_vertical<=3;
		7:mv_vertical<=4;
		8:mv_vertical<=5;
		9:mv_vertical<=6;
		10:mv_vertical<=7;
		11:mv_vertical<=8;
		12:mv_vertical<=9;
		13:mv_vertical<=10;
		14:mv_vertical<=11;
		15:mv_vertical<=12;
		16:mv_vertical<=13;
		17:mv_vertical<=14;
		18:mv_vertical<=15;
		19:;
		endcase
	end


	always @(posedge clk) begin
		if (cnt_inloop==19) begin
			rd2<=1;
		end
		else begin
			rd2<=0;
		end
	end

	always @(posedge clk) begin
		if (cnt_inloop !=19) begin
			rd1<=1;
		end
		else begin
			rd1<=0;
		end
	end
	
	initial begin
		addr1_0<=0;
		addr1_1<=0;
		addr2_0<=0;
		addr2_1<=0;
		cnt_inloop<=0;
	end
endmodule