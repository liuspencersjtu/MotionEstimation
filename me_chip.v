module me_chip(
	input wire clk,

	//input wire [7:0]data [18:0],
	//input wire [7:0]data_ref[3:0][3:0],
	input wire [7:0]data_in0,
	input wire [7:0]data_in1,
	input wire [7:0]data_in2,
	input wire [7:0]data_in3,
	input wire [7:0]data_in4,
	input wire [7:0]data_in5,
	input wire [7:0]data_in6,
	input wire [7:0]data_in7,
	input wire [7:0]data_in8,
	input wire [7:0]data_in9,
	input wire [7:0]data_in10,
	input wire [7:0]data_in11,
	input wire [7:0]data_in12,
	input wire [7:0]data_in13,
	input wire [7:0]data_in14,
	input wire [7:0]data_in15,
	input wire [7:0]data_in16,
	input wire [7:0]data_in17,
	input wire [7:0]data_in18,
	input wire [7:0]data_ref00,
	input wire [7:0]data_ref01,
	input wire [7:0]data_ref02,
	input wire [7:0]data_ref03,
	input wire [7:0]data_ref10,
	input wire [7:0]data_ref11,
	input wire [7:0]data_ref12,
	input wire [7:0]data_ref13,
	input wire [7:0]data_ref20,
	input wire [7:0]data_ref21,
	input wire [7:0]data_ref22,
	input wire [7:0]data_ref23,
	input wire [7:0]data_ref30,
	input wire [7:0]data_ref31,
	input wire [7:0]data_ref32,
	input wire [7:0]data_ref33,



	output wire rd1,
	output wire rd2,
	output wire [10:0]	addr1_0,
	output wire [10:0]	addr1_1,
	output wire [10:0]	addr2_0,
	output wire [10:0]	addr2_1,
	output wire [3:0]	mvx,
	output wire [3:0]	mvy
//	output wire [11:0]	min
	);
	wire net_rd1;
	wire net_rd2;
	wire [10:0] net_addr1_0;
	wire [10:0] net_addr1_1;
	wire [10:0] net_addr2_0;
	wire [10:0] net_addr2_1;
	wire [3:0] net_mvx;
	wire [3:0] net_mvy;

	wire [7:0] net_data_ref00;
	wire [7:0] net_data_ref01;
	wire [7:0] net_data_ref02;
	wire [7:0] net_data_ref03;
	wire [7:0] net_data_ref10;
	wire [7:0] net_data_ref11;
	wire [7:0] net_data_ref12;
	wire [7:0] net_data_ref13;
	wire [7:0] net_data_ref20;
	wire [7:0] net_data_ref21;
	wire [7:0] net_data_ref22;
	wire [7:0] net_data_ref23;
	wire [7:0] net_data_ref30;
	wire [7:0] net_data_ref31;
	wire [7:0] net_data_ref32;
	wire [7:0] net_data_ref33;

	wire [7:0] net_data_in0;
	wire [7:0] net_data_in1;
	wire [7:0] net_data_in2;
	wire [7:0] net_data_in3;
	wire [7:0] net_data_in4;
	wire [7:0] net_data_in5;
	wire [7:0] net_data_in6;
	wire [7:0] net_data_in7;
	wire [7:0] net_data_in8;
	wire [7:0] net_data_in9;
	wire [7:0] net_data_in10;
	wire [7:0] net_data_in11;
	wire [7:0] net_data_in12;
	wire [7:0] net_data_in13;
	wire [7:0] net_data_in14;
	wire [7:0] net_data_in15;
	wire [7:0] net_data_in16;
	wire [7:0] net_data_in17;
	wire [7:0] net_data_in18;

	wire net_clk;

	PIW
		PIW_clk(.PAD(clk),.C(net_clk)),
		//PIW_data_in0_0(.PAD(data_in0[0]),.C(net_data_in0[0])),
		PIW_data_in0_0(.PAD(data_in0[0]),.C(net_data_in0[0])),
		PIW_data_in0_1(.PAD(data_in0[1]),.C(net_data_in0[1])),
		PIW_data_in0_2(.PAD(data_in0[2]),.C(net_data_in0[2])),
		PIW_data_in0_3(.PAD(data_in0[3]),.C(net_data_in0[3])),
		PIW_data_in0_4(.PAD(data_in0[4]),.C(net_data_in0[4])),
		PIW_data_in0_5(.PAD(data_in0[5]),.C(net_data_in0[5])),
		PIW_data_in0_6(.PAD(data_in0[6]),.C(net_data_in0[6])),
		PIW_data_in0_7(.PAD(data_in0[7]),.C(net_data_in0[7])),
		PIW_data_in1_0(.PAD(data_in1[0]),.C(net_data_in1[0])),
		PIW_data_in1_1(.PAD(data_in1[1]),.C(net_data_in1[1])),
		PIW_data_in1_2(.PAD(data_in1[2]),.C(net_data_in1[2])),
		PIW_data_in1_3(.PAD(data_in1[3]),.C(net_data_in1[3])),
		PIW_data_in1_4(.PAD(data_in1[4]),.C(net_data_in1[4])),
		PIW_data_in1_5(.PAD(data_in1[5]),.C(net_data_in1[5])),
		PIW_data_in1_6(.PAD(data_in1[6]),.C(net_data_in1[6])),
		PIW_data_in1_7(.PAD(data_in1[7]),.C(net_data_in1[7])),
		PIW_data_in2_0(.PAD(data_in2[0]),.C(net_data_in2[0])),
		PIW_data_in2_1(.PAD(data_in2[1]),.C(net_data_in2[1])),
		PIW_data_in2_2(.PAD(data_in2[2]),.C(net_data_in2[2])),
		PIW_data_in2_3(.PAD(data_in2[3]),.C(net_data_in2[3])),
		PIW_data_in2_4(.PAD(data_in2[4]),.C(net_data_in2[4])),
		PIW_data_in2_5(.PAD(data_in2[5]),.C(net_data_in2[5])),
		PIW_data_in2_6(.PAD(data_in2[6]),.C(net_data_in2[6])),
		PIW_data_in2_7(.PAD(data_in2[7]),.C(net_data_in2[7])),
		PIW_data_in3_0(.PAD(data_in3[0]),.C(net_data_in3[0])),
		PIW_data_in3_1(.PAD(data_in3[1]),.C(net_data_in3[1])),
		PIW_data_in3_2(.PAD(data_in3[2]),.C(net_data_in3[2])),
		PIW_data_in3_3(.PAD(data_in3[3]),.C(net_data_in3[3])),
		PIW_data_in3_4(.PAD(data_in3[4]),.C(net_data_in3[4])),
		PIW_data_in3_5(.PAD(data_in3[5]),.C(net_data_in3[5])),
		PIW_data_in3_6(.PAD(data_in3[6]),.C(net_data_in3[6])),
		PIW_data_in3_7(.PAD(data_in3[7]),.C(net_data_in3[7])),
		PIW_data_in4_0(.PAD(data_in4[0]),.C(net_data_in4[0])),
		PIW_data_in4_1(.PAD(data_in4[1]),.C(net_data_in4[1])),
		PIW_data_in4_2(.PAD(data_in4[2]),.C(net_data_in4[2])),
		PIW_data_in4_3(.PAD(data_in4[3]),.C(net_data_in4[3])),
		PIW_data_in4_4(.PAD(data_in4[4]),.C(net_data_in4[4])),
		PIW_data_in4_5(.PAD(data_in4[5]),.C(net_data_in4[5])),
		PIW_data_in4_6(.PAD(data_in4[6]),.C(net_data_in4[6])),
		PIW_data_in4_7(.PAD(data_in4[7]),.C(net_data_in4[7])),
		PIW_data_in5_0(.PAD(data_in5[0]),.C(net_data_in5[0])),
		PIW_data_in5_1(.PAD(data_in5[1]),.C(net_data_in5[1])),
		PIW_data_in5_2(.PAD(data_in5[2]),.C(net_data_in5[2])),
		PIW_data_in5_3(.PAD(data_in5[3]),.C(net_data_in5[3])),
		PIW_data_in5_4(.PAD(data_in5[4]),.C(net_data_in5[4])),
		PIW_data_in5_5(.PAD(data_in5[5]),.C(net_data_in5[5])),
		PIW_data_in5_6(.PAD(data_in5[6]),.C(net_data_in5[6])),
		PIW_data_in5_7(.PAD(data_in5[7]),.C(net_data_in5[7])),
		PIW_data_in6_0(.PAD(data_in6[0]),.C(net_data_in6[0])),
		PIW_data_in6_1(.PAD(data_in6[1]),.C(net_data_in6[1])),
		PIW_data_in6_2(.PAD(data_in6[2]),.C(net_data_in6[2])),
		PIW_data_in6_3(.PAD(data_in6[3]),.C(net_data_in6[3])),
		PIW_data_in6_4(.PAD(data_in6[4]),.C(net_data_in6[4])),
		PIW_data_in6_5(.PAD(data_in6[5]),.C(net_data_in6[5])),
		PIW_data_in6_6(.PAD(data_in6[6]),.C(net_data_in6[6])),
		PIW_data_in6_7(.PAD(data_in6[7]),.C(net_data_in6[7])),
		PIW_data_in7_0(.PAD(data_in7[0]),.C(net_data_in7[0])),
		PIW_data_in7_1(.PAD(data_in7[1]),.C(net_data_in7[1])),
		PIW_data_in7_2(.PAD(data_in7[2]),.C(net_data_in7[2])),
		PIW_data_in7_3(.PAD(data_in7[3]),.C(net_data_in7[3])),
		PIW_data_in7_4(.PAD(data_in7[4]),.C(net_data_in7[4])),
		PIW_data_in7_5(.PAD(data_in7[5]),.C(net_data_in7[5])),
		PIW_data_in7_6(.PAD(data_in7[6]),.C(net_data_in7[6])),
		PIW_data_in7_7(.PAD(data_in7[7]),.C(net_data_in7[7])),
		PIW_data_in8_0(.PAD(data_in8[0]),.C(net_data_in8[0])),
		PIW_data_in8_1(.PAD(data_in8[1]),.C(net_data_in8[1])),
		PIW_data_in8_2(.PAD(data_in8[2]),.C(net_data_in8[2])),
		PIW_data_in8_3(.PAD(data_in8[3]),.C(net_data_in8[3])),
		PIW_data_in8_4(.PAD(data_in8[4]),.C(net_data_in8[4])),
		PIW_data_in8_5(.PAD(data_in8[5]),.C(net_data_in8[5])),
		PIW_data_in8_6(.PAD(data_in8[6]),.C(net_data_in8[6])),
		PIW_data_in8_7(.PAD(data_in8[7]),.C(net_data_in8[7])),
		PIW_data_in9_0(.PAD(data_in9[0]),.C(net_data_in9[0])),
		PIW_data_in9_1(.PAD(data_in9[1]),.C(net_data_in9[1])),
		PIW_data_in9_2(.PAD(data_in9[2]),.C(net_data_in9[2])),
		PIW_data_in9_3(.PAD(data_in9[3]),.C(net_data_in9[3])),
		PIW_data_in9_4(.PAD(data_in9[4]),.C(net_data_in9[4])),
		PIW_data_in9_5(.PAD(data_in9[5]),.C(net_data_in9[5])),
		PIW_data_in9_6(.PAD(data_in9[6]),.C(net_data_in9[6])),
		PIW_data_in9_7(.PAD(data_in9[7]),.C(net_data_in9[7])),
		PIW_data_in10_0(.PAD(data_in10[0]),.C(net_data_in10[0])),
		PIW_data_in10_1(.PAD(data_in10[1]),.C(net_data_in10[1])),
		PIW_data_in10_2(.PAD(data_in10[2]),.C(net_data_in10[2])),
		PIW_data_in10_3(.PAD(data_in10[3]),.C(net_data_in10[3])),
		PIW_data_in10_4(.PAD(data_in10[4]),.C(net_data_in10[4])),
		PIW_data_in10_5(.PAD(data_in10[5]),.C(net_data_in10[5])),
		PIW_data_in10_6(.PAD(data_in10[6]),.C(net_data_in10[6])),
		PIW_data_in10_7(.PAD(data_in10[7]),.C(net_data_in10[7])),
		PIW_data_in11_0(.PAD(data_in11[0]),.C(net_data_in11[0])),
		PIW_data_in11_1(.PAD(data_in11[1]),.C(net_data_in11[1])),
		PIW_data_in11_2(.PAD(data_in11[2]),.C(net_data_in11[2])),
		PIW_data_in11_3(.PAD(data_in11[3]),.C(net_data_in11[3])),
		PIW_data_in11_4(.PAD(data_in11[4]),.C(net_data_in11[4])),
		PIW_data_in11_5(.PAD(data_in11[5]),.C(net_data_in11[5])),
		PIW_data_in11_6(.PAD(data_in11[6]),.C(net_data_in11[6])),
		PIW_data_in11_7(.PAD(data_in11[7]),.C(net_data_in11[7])),
		PIW_data_in12_0(.PAD(data_in12[0]),.C(net_data_in12[0])),
		PIW_data_in12_1(.PAD(data_in12[1]),.C(net_data_in12[1])),
		PIW_data_in12_2(.PAD(data_in12[2]),.C(net_data_in12[2])),
		PIW_data_in12_3(.PAD(data_in12[3]),.C(net_data_in12[3])),
		PIW_data_in12_4(.PAD(data_in12[4]),.C(net_data_in12[4])),
		PIW_data_in12_5(.PAD(data_in12[5]),.C(net_data_in12[5])),
		PIW_data_in12_6(.PAD(data_in12[6]),.C(net_data_in12[6])),
		PIW_data_in12_7(.PAD(data_in12[7]),.C(net_data_in12[7])),
		PIW_data_in13_0(.PAD(data_in13[0]),.C(net_data_in13[0])),
		PIW_data_in13_1(.PAD(data_in13[1]),.C(net_data_in13[1])),
		PIW_data_in13_2(.PAD(data_in13[2]),.C(net_data_in13[2])),
		PIW_data_in13_3(.PAD(data_in13[3]),.C(net_data_in13[3])),
		PIW_data_in13_4(.PAD(data_in13[4]),.C(net_data_in13[4])),
		PIW_data_in13_5(.PAD(data_in13[5]),.C(net_data_in13[5])),
		PIW_data_in13_6(.PAD(data_in13[6]),.C(net_data_in13[6])),
		PIW_data_in13_7(.PAD(data_in13[7]),.C(net_data_in13[7])),
		PIW_data_in14_0(.PAD(data_in14[0]),.C(net_data_in14[0])),
		PIW_data_in14_1(.PAD(data_in14[1]),.C(net_data_in14[1])),
		PIW_data_in14_2(.PAD(data_in14[2]),.C(net_data_in14[2])),
		PIW_data_in14_3(.PAD(data_in14[3]),.C(net_data_in14[3])),
		PIW_data_in14_4(.PAD(data_in14[4]),.C(net_data_in14[4])),
		PIW_data_in14_5(.PAD(data_in14[5]),.C(net_data_in14[5])),
		PIW_data_in14_6(.PAD(data_in14[6]),.C(net_data_in14[6])),
		PIW_data_in14_7(.PAD(data_in14[7]),.C(net_data_in14[7])),
		PIW_data_in15_0(.PAD(data_in15[0]),.C(net_data_in15[0])),
		PIW_data_in15_1(.PAD(data_in15[1]),.C(net_data_in15[1])),
		PIW_data_in15_2(.PAD(data_in15[2]),.C(net_data_in15[2])),
		PIW_data_in15_3(.PAD(data_in15[3]),.C(net_data_in15[3])),
		PIW_data_in15_4(.PAD(data_in15[4]),.C(net_data_in15[4])),
		PIW_data_in15_5(.PAD(data_in15[5]),.C(net_data_in15[5])),
		PIW_data_in15_6(.PAD(data_in15[6]),.C(net_data_in15[6])),
		PIW_data_in15_7(.PAD(data_in15[7]),.C(net_data_in15[7])),
		PIW_data_in16_0(.PAD(data_in16[0]),.C(net_data_in16[0])),
		PIW_data_in16_1(.PAD(data_in16[1]),.C(net_data_in16[1])),
		PIW_data_in16_2(.PAD(data_in16[2]),.C(net_data_in16[2])),
		PIW_data_in16_3(.PAD(data_in16[3]),.C(net_data_in16[3])),
		PIW_data_in16_4(.PAD(data_in16[4]),.C(net_data_in16[4])),
		PIW_data_in16_5(.PAD(data_in16[5]),.C(net_data_in16[5])),
		PIW_data_in16_6(.PAD(data_in16[6]),.C(net_data_in16[6])),
		PIW_data_in16_7(.PAD(data_in16[7]),.C(net_data_in16[7])),
		PIW_data_in17_0(.PAD(data_in17[0]),.C(net_data_in17[0])),
		PIW_data_in17_1(.PAD(data_in17[1]),.C(net_data_in17[1])),
		PIW_data_in17_2(.PAD(data_in17[2]),.C(net_data_in17[2])),
		PIW_data_in17_3(.PAD(data_in17[3]),.C(net_data_in17[3])),
		PIW_data_in17_4(.PAD(data_in17[4]),.C(net_data_in17[4])),
		PIW_data_in17_5(.PAD(data_in17[5]),.C(net_data_in17[5])),
		PIW_data_in17_6(.PAD(data_in17[6]),.C(net_data_in17[6])),
		PIW_data_in17_7(.PAD(data_in17[7]),.C(net_data_in17[7])),
		PIW_data_in18_0(.PAD(data_in18[0]),.C(net_data_in18[0])),
		PIW_data_in18_1(.PAD(data_in18[1]),.C(net_data_in18[1])),
		PIW_data_in18_2(.PAD(data_in18[2]),.C(net_data_in18[2])),
		PIW_data_in18_3(.PAD(data_in18[3]),.C(net_data_in18[3])),
		PIW_data_in18_4(.PAD(data_in18[4]),.C(net_data_in18[4])),
		PIW_data_in18_5(.PAD(data_in18[5]),.C(net_data_in18[5])),
		PIW_data_in18_6(.PAD(data_in18[6]),.C(net_data_in18[6])),
		PIW_data_in18_7(.PAD(data_in18[7]),.C(net_data_in18[7])),

		//PTW_data_ref00_0(.PAD(data_ref00[0]),.C(net_data_ref00[0])),
		PTW_data_ref00_0(.PAD(data_ref00[0]),.C(net_data_ref00[0])),
		PTW_data_ref00_1(.PAD(data_ref00[1]),.C(net_data_ref00[1])),
		PTW_data_ref00_2(.PAD(data_ref00[2]),.C(net_data_ref00[2])),
		PTW_data_ref00_3(.PAD(data_ref00[3]),.C(net_data_ref00[3])),
		PTW_data_ref00_4(.PAD(data_ref00[4]),.C(net_data_ref00[4])),
		PTW_data_ref00_5(.PAD(data_ref00[5]),.C(net_data_ref00[5])),
		PTW_data_ref00_6(.PAD(data_ref00[6]),.C(net_data_ref00[6])),
		PTW_data_ref00_7(.PAD(data_ref00[7]),.C(net_data_ref00[7])),
		PTW_data_ref01_0(.PAD(data_ref01[0]),.C(net_data_ref01[0])),
		PTW_data_ref01_1(.PAD(data_ref01[1]),.C(net_data_ref01[1])),
		PTW_data_ref01_2(.PAD(data_ref01[2]),.C(net_data_ref01[2])),
		PTW_data_ref01_3(.PAD(data_ref01[3]),.C(net_data_ref01[3])),
		PTW_data_ref01_4(.PAD(data_ref01[4]),.C(net_data_ref01[4])),
		PTW_data_ref01_5(.PAD(data_ref01[5]),.C(net_data_ref01[5])),
		PTW_data_ref01_6(.PAD(data_ref01[6]),.C(net_data_ref01[6])),
		PTW_data_ref01_7(.PAD(data_ref01[7]),.C(net_data_ref01[7])),
		PTW_data_ref02_0(.PAD(data_ref02[0]),.C(net_data_ref02[0])),
		PTW_data_ref02_1(.PAD(data_ref02[1]),.C(net_data_ref02[1])),
		PTW_data_ref02_2(.PAD(data_ref02[2]),.C(net_data_ref02[2])),
		PTW_data_ref02_3(.PAD(data_ref02[3]),.C(net_data_ref02[3])),
		PTW_data_ref02_4(.PAD(data_ref02[4]),.C(net_data_ref02[4])),
		PTW_data_ref02_5(.PAD(data_ref02[5]),.C(net_data_ref02[5])),
		PTW_data_ref02_6(.PAD(data_ref02[6]),.C(net_data_ref02[6])),
		PTW_data_ref02_7(.PAD(data_ref02[7]),.C(net_data_ref02[7])),
		PTW_data_ref03_0(.PAD(data_ref03[0]),.C(net_data_ref03[0])),
		PTW_data_ref03_1(.PAD(data_ref03[1]),.C(net_data_ref03[1])),
		PTW_data_ref03_2(.PAD(data_ref03[2]),.C(net_data_ref03[2])),
		PTW_data_ref03_3(.PAD(data_ref03[3]),.C(net_data_ref03[3])),
		PTW_data_ref03_4(.PAD(data_ref03[4]),.C(net_data_ref03[4])),
		PTW_data_ref03_5(.PAD(data_ref03[5]),.C(net_data_ref03[5])),
		PTW_data_ref03_6(.PAD(data_ref03[6]),.C(net_data_ref03[6])),
		PTW_data_ref03_7(.PAD(data_ref03[7]),.C(net_data_ref03[7])),
		PTW_data_ref10_0(.PAD(data_ref10[0]),.C(net_data_ref10[0])),
		PTW_data_ref10_1(.PAD(data_ref10[1]),.C(net_data_ref10[1])),
		PTW_data_ref10_2(.PAD(data_ref10[2]),.C(net_data_ref10[2])),
		PTW_data_ref10_3(.PAD(data_ref10[3]),.C(net_data_ref10[3])),
		PTW_data_ref10_4(.PAD(data_ref10[4]),.C(net_data_ref10[4])),
		PTW_data_ref10_5(.PAD(data_ref10[5]),.C(net_data_ref10[5])),
		PTW_data_ref10_6(.PAD(data_ref10[6]),.C(net_data_ref10[6])),
		PTW_data_ref10_7(.PAD(data_ref10[7]),.C(net_data_ref10[7])),
		PTW_data_ref11_0(.PAD(data_ref11[0]),.C(net_data_ref11[0])),
		PTW_data_ref11_1(.PAD(data_ref11[1]),.C(net_data_ref11[1])),
		PTW_data_ref11_2(.PAD(data_ref11[2]),.C(net_data_ref11[2])),
		PTW_data_ref11_3(.PAD(data_ref11[3]),.C(net_data_ref11[3])),
		PTW_data_ref11_4(.PAD(data_ref11[4]),.C(net_data_ref11[4])),
		PTW_data_ref11_5(.PAD(data_ref11[5]),.C(net_data_ref11[5])),
		PTW_data_ref11_6(.PAD(data_ref11[6]),.C(net_data_ref11[6])),
		PTW_data_ref11_7(.PAD(data_ref11[7]),.C(net_data_ref11[7])),
		PTW_data_ref12_0(.PAD(data_ref12[0]),.C(net_data_ref12[0])),
		PTW_data_ref12_1(.PAD(data_ref12[1]),.C(net_data_ref12[1])),
		PTW_data_ref12_2(.PAD(data_ref12[2]),.C(net_data_ref12[2])),
		PTW_data_ref12_3(.PAD(data_ref12[3]),.C(net_data_ref12[3])),
		PTW_data_ref12_4(.PAD(data_ref12[4]),.C(net_data_ref12[4])),
		PTW_data_ref12_5(.PAD(data_ref12[5]),.C(net_data_ref12[5])),
		PTW_data_ref12_6(.PAD(data_ref12[6]),.C(net_data_ref12[6])),
		PTW_data_ref12_7(.PAD(data_ref12[7]),.C(net_data_ref12[7])),
		PTW_data_ref13_0(.PAD(data_ref13[0]),.C(net_data_ref13[0])),
		PTW_data_ref13_1(.PAD(data_ref13[1]),.C(net_data_ref13[1])),
		PTW_data_ref13_2(.PAD(data_ref13[2]),.C(net_data_ref13[2])),
		PTW_data_ref13_3(.PAD(data_ref13[3]),.C(net_data_ref13[3])),
		PTW_data_ref13_4(.PAD(data_ref13[4]),.C(net_data_ref13[4])),
		PTW_data_ref13_5(.PAD(data_ref13[5]),.C(net_data_ref13[5])),
		PTW_data_ref13_6(.PAD(data_ref13[6]),.C(net_data_ref13[6])),
		PTW_data_ref13_7(.PAD(data_ref13[7]),.C(net_data_ref13[7])),
		PTW_data_ref20_0(.PAD(data_ref20[0]),.C(net_data_ref20[0])),
		PTW_data_ref20_1(.PAD(data_ref20[1]),.C(net_data_ref20[1])),
		PTW_data_ref20_2(.PAD(data_ref20[2]),.C(net_data_ref20[2])),
		PTW_data_ref20_3(.PAD(data_ref20[3]),.C(net_data_ref20[3])),
		PTW_data_ref20_4(.PAD(data_ref20[4]),.C(net_data_ref20[4])),
		PTW_data_ref20_5(.PAD(data_ref20[5]),.C(net_data_ref20[5])),
		PTW_data_ref20_6(.PAD(data_ref20[6]),.C(net_data_ref20[6])),
		PTW_data_ref20_7(.PAD(data_ref20[7]),.C(net_data_ref20[7])),
		PTW_data_ref21_0(.PAD(data_ref21[0]),.C(net_data_ref21[0])),
		PTW_data_ref21_1(.PAD(data_ref21[1]),.C(net_data_ref21[1])),
		PTW_data_ref21_2(.PAD(data_ref21[2]),.C(net_data_ref21[2])),
		PTW_data_ref21_3(.PAD(data_ref21[3]),.C(net_data_ref21[3])),
		PTW_data_ref21_4(.PAD(data_ref21[4]),.C(net_data_ref21[4])),
		PTW_data_ref21_5(.PAD(data_ref21[5]),.C(net_data_ref21[5])),
		PTW_data_ref21_6(.PAD(data_ref21[6]),.C(net_data_ref21[6])),
		PTW_data_ref21_7(.PAD(data_ref21[7]),.C(net_data_ref21[7])),
		PTW_data_ref22_0(.PAD(data_ref22[0]),.C(net_data_ref22[0])),
		PTW_data_ref22_1(.PAD(data_ref22[1]),.C(net_data_ref22[1])),
		PTW_data_ref22_2(.PAD(data_ref22[2]),.C(net_data_ref22[2])),
		PTW_data_ref22_3(.PAD(data_ref22[3]),.C(net_data_ref22[3])),
		PTW_data_ref22_4(.PAD(data_ref22[4]),.C(net_data_ref22[4])),
		PTW_data_ref22_5(.PAD(data_ref22[5]),.C(net_data_ref22[5])),
		PTW_data_ref22_6(.PAD(data_ref22[6]),.C(net_data_ref22[6])),
		PTW_data_ref22_7(.PAD(data_ref22[7]),.C(net_data_ref22[7])),
		PTW_data_ref23_0(.PAD(data_ref23[0]),.C(net_data_ref23[0])),
		PTW_data_ref23_1(.PAD(data_ref23[1]),.C(net_data_ref23[1])),
		PTW_data_ref23_2(.PAD(data_ref23[2]),.C(net_data_ref23[2])),
		PTW_data_ref23_3(.PAD(data_ref23[3]),.C(net_data_ref23[3])),
		PTW_data_ref23_4(.PAD(data_ref23[4]),.C(net_data_ref23[4])),
		PTW_data_ref23_5(.PAD(data_ref23[5]),.C(net_data_ref23[5])),
		PTW_data_ref23_6(.PAD(data_ref23[6]),.C(net_data_ref23[6])),
		PTW_data_ref23_7(.PAD(data_ref23[7]),.C(net_data_ref23[7])),
		PTW_data_ref30_0(.PAD(data_ref30[0]),.C(net_data_ref30[0])),
		PTW_data_ref30_1(.PAD(data_ref30[1]),.C(net_data_ref30[1])),
		PTW_data_ref30_2(.PAD(data_ref30[2]),.C(net_data_ref30[2])),
		PTW_data_ref30_3(.PAD(data_ref30[3]),.C(net_data_ref30[3])),
		PTW_data_ref30_4(.PAD(data_ref30[4]),.C(net_data_ref30[4])),
		PTW_data_ref30_5(.PAD(data_ref30[5]),.C(net_data_ref30[5])),
		PTW_data_ref30_6(.PAD(data_ref30[6]),.C(net_data_ref30[6])),
		PTW_data_ref30_7(.PAD(data_ref30[7]),.C(net_data_ref30[7])),
		PTW_data_ref31_0(.PAD(data_ref31[0]),.C(net_data_ref31[0])),
		PTW_data_ref31_1(.PAD(data_ref31[1]),.C(net_data_ref31[1])),
		PTW_data_ref31_2(.PAD(data_ref31[2]),.C(net_data_ref31[2])),
		PTW_data_ref31_3(.PAD(data_ref31[3]),.C(net_data_ref31[3])),
		PTW_data_ref31_4(.PAD(data_ref31[4]),.C(net_data_ref31[4])),
		PTW_data_ref31_5(.PAD(data_ref31[5]),.C(net_data_ref31[5])),
		PTW_data_ref31_6(.PAD(data_ref31[6]),.C(net_data_ref31[6])),
		PTW_data_ref31_7(.PAD(data_ref31[7]),.C(net_data_ref31[7])),
		PTW_data_ref32_0(.PAD(data_ref32[0]),.C(net_data_ref32[0])),
		PTW_data_ref32_1(.PAD(data_ref32[1]),.C(net_data_ref32[1])),
		PTW_data_ref32_2(.PAD(data_ref32[2]),.C(net_data_ref32[2])),
		PTW_data_ref32_3(.PAD(data_ref32[3]),.C(net_data_ref32[3])),
		PTW_data_ref32_4(.PAD(data_ref32[4]),.C(net_data_ref32[4])),
		PTW_data_ref32_5(.PAD(data_ref32[5]),.C(net_data_ref32[5])),
		PTW_data_ref32_6(.PAD(data_ref32[6]),.C(net_data_ref32[6])),
		PTW_data_ref32_7(.PAD(data_ref32[7]),.C(net_data_ref32[7])),
		PTW_data_ref33_0(.PAD(data_ref33[0]),.C(net_data_ref33[0])),
		PTW_data_ref33_1(.PAD(data_ref33[1]),.C(net_data_ref33[1])),
		PTW_data_ref33_2(.PAD(data_ref33[2]),.C(net_data_ref33[2])),
		PTW_data_ref33_3(.PAD(data_ref33[3]),.C(net_data_ref33[3])),
		PTW_data_ref33_4(.PAD(data_ref33[4]),.C(net_data_ref33[4])),
		PTW_data_ref33_5(.PAD(data_ref33[5]),.C(net_data_ref33[5])),
		PTW_data_ref33_6(.PAD(data_ref33[6]),.C(net_data_ref33[6])),
		PTW_data_ref33_7(.PAD(data_ref33[7]),.C(net_data_ref33[7]));

	P08W

		P08W_rd1(.I(net_rd1),.PAD(rd1)),
		P08W_rd2(.I(net_rd2),.PAD(rd2)),
		//P08W_addr1_0_0(.I(net_addr1_0[0]),PAD(addr1_0[0])),
		P08W_addr1_0_0(.I(net_addr1_0[0]),.PAD(addr1_0[0])),
		P08W_addr1_0_1(.I(net_addr1_0[1]),.PAD(addr1_0[1])),
		P08W_addr1_0_2(.I(net_addr1_0[2]),.PAD(addr1_0[2])),
		P08W_addr1_0_3(.I(net_addr1_0[3]),.PAD(addr1_0[3])),
		P08W_addr1_0_4(.I(net_addr1_0[4]),.PAD(addr1_0[4])),
		P08W_addr1_0_5(.I(net_addr1_0[5]),.PAD(addr1_0[5])),
		P08W_addr1_0_6(.I(net_addr1_0[6]),.PAD(addr1_0[6])),
		P08W_addr1_0_7(.I(net_addr1_0[7]),.PAD(addr1_0[7])),
		P08W_addr1_0_8(.I(net_addr1_0[8]),.PAD(addr1_0[8])),
		P08W_addr1_0_9(.I(net_addr1_0[9]),.PAD(addr1_0[9])),
		P08W_addr1_0_10(.I(net_addr1_0[10]),.PAD(addr1_0[10])),

		P08W_addr1_1_0(.I(net_addr1_1[0]),.PAD(addr1_1[0])),
		P08W_addr1_1_1(.I(net_addr1_1[1]),.PAD(addr1_1[1])),
		P08W_addr1_1_2(.I(net_addr1_1[2]),.PAD(addr1_1[2])),
		P08W_addr1_1_3(.I(net_addr1_1[3]),.PAD(addr1_1[3])),
		P08W_addr1_1_4(.I(net_addr1_1[4]),.PAD(addr1_1[4])),
		P08W_addr1_1_5(.I(net_addr1_1[5]),.PAD(addr1_1[5])),
		P08W_addr1_1_6(.I(net_addr1_1[6]),.PAD(addr1_1[6])),
		P08W_addr1_1_7(.I(net_addr1_1[7]),.PAD(addr1_1[7])),
		P08W_addr1_1_8(.I(net_addr1_1[8]),.PAD(addr1_1[8])),
		P08W_addr1_1_9(.I(net_addr1_1[9]),.PAD(addr1_1[9])),
		P08W_addr1_1_10(.I(net_addr1_1[10]),.PAD(addr1_1[10])),

		P08W_addr2_0_0(.I(net_addr2_0[0]),.PAD(addr2_0[0])),
		P08W_addr2_0_1(.I(net_addr2_0[1]),.PAD(addr2_0[1])),
		P08W_addr2_0_2(.I(net_addr2_0[2]),.PAD(addr2_0[2])),
		P08W_addr2_0_3(.I(net_addr2_0[3]),.PAD(addr2_0[3])),
		P08W_addr2_0_4(.I(net_addr2_0[4]),.PAD(addr2_0[4])),
		P08W_addr2_0_5(.I(net_addr2_0[5]),.PAD(addr2_0[5])),
		P08W_addr2_0_6(.I(net_addr2_0[6]),.PAD(addr2_0[6])),
		P08W_addr2_0_7(.I(net_addr2_0[7]),.PAD(addr2_0[7])),
		P08W_addr2_0_8(.I(net_addr2_0[8]),.PAD(addr2_0[8])),
		P08W_addr2_0_9(.I(net_addr2_0[9]),.PAD(addr2_0[9])),
		P08W_addr2_0_10(.I(net_addr2_0[10]),.PAD(addr2_0[10])),

		P08W_addr2_1_0(.I(net_addr2_1[0]),.PAD(addr2_1[0])),
		P08W_addr2_1_1(.I(net_addr2_1[1]),.PAD(addr2_1[1])),
		P08W_addr2_1_2(.I(net_addr2_1[2]),.PAD(addr2_1[2])),
		P08W_addr2_1_3(.I(net_addr2_1[3]),.PAD(addr2_1[3])),
		P08W_addr2_1_4(.I(net_addr2_1[4]),.PAD(addr2_1[4])),
		P08W_addr2_1_5(.I(net_addr2_1[5]),.PAD(addr2_1[5])),
		P08W_addr2_1_6(.I(net_addr2_1[6]),.PAD(addr2_1[6])),
		P08W_addr2_1_7(.I(net_addr2_1[7]),.PAD(addr2_1[7])),
		P08W_addr2_1_8(.I(net_addr2_1[8]),.PAD(addr2_1[8])),
		P08W_addr2_1_9(.I(net_addr2_1[9]),.PAD(addr2_1[9])),
		P08W_addr2_1_10(.I(net_addr2_1[10]),.PAD(addr2_1[10])),

		//P08W_mvx_0(.I(net_mvx[0]),PAD(mvx[0])),
		P08W_mvx_0(.I(net_mvx[0]),.PAD(mvx[0])),
		P08W_mvx_1(.I(net_mvx[1]),.PAD(mvx[1])),
		P08W_mvx_2(.I(net_mvx[2]),.PAD(mvx[2])),
		P08W_mvx_3(.I(net_mvx[3]),.PAD(mvx[3])),

		P08W_mvy_0(.I(net_mvy[0]),.PAD(mvy[0])),
		P08W_mvy_1(.I(net_mvy[1]),.PAD(mvy[1])),
		P08W_mvy_2(.I(net_mvy[2]),.PAD(mvy[2])),
		P08W_mvy_3(.I(net_mvy[3]),.PAD(mvy[3]));

	me me1(
		.clk(net_clk),
		//.data(data),
		.data_in0(net_data_in0),
	.data_in1(net_data_in1),
	.data_in2(net_data_in2),
	.data_in3(net_data_in3),
	.data_in4(net_data_in4),
	.data_in5(net_data_in5),
	.data_in6(net_data_in6),
	.data_in7(net_data_in7),
	.data_in8(net_data_in8),
	.data_in9(net_data_in9),
	.data_in10(net_data_in10),
	.data_in11(net_data_in11),
	.data_in12(net_data_in12),
	.data_in13(net_data_in13),
	.data_in14(net_data_in14),
	.data_in15(net_data_in15),
	.data_in16(net_data_in16),
	.data_in17(net_data_in17),
	.data_in18(net_data_in18),
		//.data_ref(data_ref),
		.data_ref00(net_data_ref00),
	.data_ref01(net_data_ref01),
	.data_ref02(net_data_ref02),
	.data_ref03(net_data_ref03),
	.data_ref10(net_data_ref10),
	.data_ref11(net_data_ref11),
	.data_ref12(net_data_ref12),
	.data_ref13(net_data_ref13),
	.data_ref20(net_data_ref20),
	.data_ref21(net_data_ref21),
	.data_ref22(net_data_ref22),
	.data_ref23(net_data_ref23),
	.data_ref30(net_data_ref30),
	.data_ref31(net_data_ref31),
	.data_ref32(net_data_ref32),
	.data_ref33(net_data_ref33),
		.rd1(net_rd1),
		.rd2(net_rd2),
		.addr1_0(net_addr1_0),
		.addr1_1(net_addr1_1),
		.addr2_0(net_addr2_0),
		.addr2_1(net_addr2_1),
		.mvx(net_mvx),
		.mvy(net_mvy)
		);
endmodule


