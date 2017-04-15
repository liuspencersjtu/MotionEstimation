module test();
	reg clk;
	wire rd1, rd2;
	wire [10:0] addr1[1:0];
	wire [10:0]	addr2[1:0];
	wire [3:0]	mvx;
	wire [3:0]	mvy;

	wire [7:0]data [18:0];
	wire [7:0]data_ref[3:0][3:0];

	dm dm1(
	.clk(clk),
	.addr_0(addr1_0),
	.addr_1(addr1_1),
	.rd(rd1),
	//.rdata(data)
	.rdata_0(data[0]),
	.rdata_1(data[1]),
	.rdata_2(data[2]),
	.rdata_3(data[3]),
	.rdata_4(data[4]),
	.rdata_5(data[5]),
	.rdata_6(data[6]),
	.rdata_7(data[7]),
	.rdata_8(data[8]),
	.rdata_9(data[9]),
	.rdata_10(data[10]),
	.rdata_11(data[11]),
	.rdata_12(data[12]),
	.rdata_13(data[13]),
	.rdata_14(data[14]),
	.rdata_15(data[15]),
	.rdata_16(data[16]),
	.rdata_17(data[17]),
	.rdata_18(data[18])
	); 

	dmref dmref(
	.clk(clk),
	.addr_0(addr2_0),
	.addr_1(addr2_1),
	.rd(rd2),
	//.rdata(data_ref)
	.rdata00(data_ref[0][0]),
	.rdata01(data_ref[0][1]),
	.rdata02(data_ref[0][2]),
	.rdata03(data_ref[0][3]),
	.rdata10(data_ref[1][0]),
	.rdata11(data_ref[1][1]),
	.rdata12(data_ref[1][2]),
	.rdata13(data_ref[1][3]),
	.rdata20(data_ref[2][0]),
	.rdata21(data_ref[2][1]),
	.rdata22(data_ref[2][2]),
	.rdata23(data_ref[2][3]),
	.rdata30(data_ref[3][0]),
	.rdata31(data_ref[3][1]),
	.rdata32(data_ref[3][2]),
	.rdata33(data_ref[3][3])
	);

	me me1(
		.clk(clk),
		//.data(data),
		.data_in0(data[0]),
	.data_in1(data[1]),
	.data_in2(data[2]),
	.data_in3(data[3]),
	.data_in4(data[4]),
	.data_in5(data[5]),
	.data_in6(data[6]),
	.data_in7(data[7]),
	.data_in8(data[8]),
	.data_in9(data[9]),
	.data_in10(data[10]),
	.data_in11(data[11]),
	.data_in12(data[12]),
	.data_in13(data[13]),
	.data_in14(data[14]),
	.data_in15(data[15]),
	.data_in16(data[16]),
	.data_in17(data[17]),
	.data_in18(data[18]),
		//.data_ref(data_ref),
		.data_ref00(data_ref[0][0]),
	.data_ref01(data_ref[0][1]),
	.data_ref02(data_ref[0][2]),
	.data_ref03(data_ref[0][3]),
	.data_ref10(data_ref[1][0]),
	.data_ref11(data_ref[1][1]),
	.data_ref12(data_ref[1][2]),
	.data_ref13(data_ref[1][3]),
	.data_ref20(data_ref[2][0]),
	.data_ref21(data_ref[2][1]),
	.data_ref22(data_ref[2][2]),
	.data_ref23(data_ref[2][3]),
	.data_ref30(data_ref[3][0]),
	.data_ref31(data_ref[3][1]),
	.data_ref32(data_ref[3][2]),
	.data_ref33(data_ref[3][3]),
		.rd1(rd1),
		.rd2(rd2),
		.addr1_0(addr1_0),
		.addr1_1(addr1_1),
		.addr2_0(addr2_0),
		.addr2_1(addr2_1),
		.mvx(mvx),
		.mvy(mvy)
		); 

	dmStore dmStore1(
	.clk(clk),
	.mvx(mvx),
	.mvy(mvy)
	);  

	always begin
		#5;
		clk <= ~clk;
	end

	initial begin
		clk <= 1'b0;
	end
endmodule