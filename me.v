`include "array_pack_unpack.v"
module me(
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
//wire between ctl and dm module
//wire rd1;
//wire addr1;
//wire rd2;
//wire addr2;
//wire between dm and arrays


//wire [7:0]data [18:0];


//wire between arrays and comparator;
wire [11:0]mad[15:0];
wire [191:0] mad_12_16_in;
`UNPACK_ARRAY(12,16,mad,mad_12_16_in)
//wire between comparators and dmStore
//wire mv;
//wire min;
//wire between comparator and ctl
//wire ctl;
wire compare;
//wire [3:0]mv_horizontal;
wire [3:0]mv_vertical;
//Õâ¸öµØ·½µÄRDATAÊÇĞèÒªµ½dm.vÀïÃæÕÒµ½Êı¾İ½á¹¹ĞŞ¸ÄµÄ£¡
/*dm dm1(
	.clk(clk),
	.addr(addr1),
	.rd(rd1),
	.rdata(data)
	); */
//dmref Êä³öµÄÓ¦¸ÃÊÇ4*4µÄdataref


//wire [7:0]data_ref[3:0][3:0];


/*dm dmref(
	.clk(clk),
	.addr(addr2),
	.rd(rd2),
	.rdata(data_ref)
	); */

array array0(
	.clk(clk),
	//.data_in(data[3:0]),
	//.data_ref(data_ref),
	.data_in0(data_in0),
	.data_in1(data_in1),
	.data_in2(data_in2),
	.data_in3(data_in3),

	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),
	.mad(mad[0])
	);
array array1(
	.clk(clk),
	//.data_in(data[4:1]),
	//.data_ref(data_ref),
	.data_in0(data_in1),
	.data_in1(data_in2),
	.data_in2(data_in3),
	.data_in3(data_in4),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),
	.mad(mad[1])
	);
array array2(
	.clk(clk),
	//.data_in(data[5:2]),
	//.data_ref(data_ref),
	.data_in0(data_in2),
	.data_in1(data_in3),
	.data_in2(data_in4),
	.data_in3(data_in5),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[2])
	);
array array3(
	.clk(clk),
	//.data_in(data[6:3]),
	//.data_ref(data_ref),
	.data_in0(data_in3),
	.data_in1(data_in4),
	.data_in2(data_in5),
	.data_in3(data_in6),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[3])
	);
array array4(
	.clk(clk),
	//.data_in(data[7:4]),
	//.data_ref(data_ref),

	.data_in0(data_in4),
	.data_in1(data_in5),
	.data_in2(data_in6),
	.data_in3(data_in7),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[4])
	);
array array5(
	.clk(clk),
	//.data_in(data[8:5]),
	//.data_ref(data_ref),
	.data_in0(data_in5),
	.data_in1(data_in6),
	.data_in2(data_in7),
	.data_in3(data_in8),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[5])
	);
array array6(
	.clk(clk),
	//.data_in(data[9:6]),
	//.data_ref(data_ref),
	.data_in0(data_in6),
	.data_in1(data_in7),
	.data_in2(data_in8),
	.data_in3(data_in9),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[6])
	);
array array7(
	.clk(clk),
	//.data_in(data[10:7]),
	//.data_ref(data_ref),
	.data_in0(data_in7),
	.data_in1(data_in8),
	.data_in2(data_in9),
	.data_in3(data_in10),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[7])
	);
array array8(
	.clk(clk),
	//.data_in(data[11:8]),
	//.data_ref(data_ref),
	.data_in0(data_in8),
	.data_in1(data_in9),
	.data_in2(data_in10),
	.data_in3(data_in11),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[8])
	);
array array9(
	.clk(clk),
	//.data_in(data[12:9]),
	//.data_ref(data_ref),
	.data_in0(data_in9),
	.data_in1(data_in10),
	.data_in2(data_in11),
	.data_in3(data_in12),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[9])
	);
array array10(
	.clk(clk),
	//.data_in(data[13:10]),
	//.data_ref(data_ref),
	.data_in0(data_in10),
	.data_in1(data_in11),
	.data_in2(data_in12),
	.data_in3(data_in13),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[10])
	);
array array11(
	.clk(clk),
	//.data_in(data[14:11]),
	//.data_ref(data_ref),
	.data_in0(data_in11),
	.data_in1(data_in12),
	.data_in2(data_in13),
	.data_in3(data_in14),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[11])
	);
array array12(
	.clk(clk),
	//.data_in(data[15:12]),
	//.data_ref(data_ref),
	.data_in0(data_in12),
	.data_in1(data_in13),
	.data_in2(data_in14),
	.data_in3(data_in15),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[12])
	);
array array13(
	.clk(clk),
	//.data_in(data[16:13]),
	//.data_ref(data_ref),
	.data_in0(data_in13),
	.data_in1(data_in14),
	.data_in2(data_in15),
	.data_in3(data_in16),
	/*.dataref_00(data_ref00),
	.dataref_01(data_ref01),
	.dataref_02(data_ref02),
	.dataref_03(data_ref03),
	.dataref_10(data_ref10),
	.dataref_11(data_ref11),
	.dataref_12(data_ref12),
	.dataref_13(data_ref13),
	.dataref_20(data_ref20),
	.dataref_21(data_ref21),
	.dataref_22(data_ref22),
	.dataref_23(data_ref23),
	.dataref_30(data_ref30),
	.dataref_31(data_ref31),
	.dataref_32(data_ref32),
	.dataref_33(data_ref33),*/
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[13])
	);
array array14(
	.clk(clk),
	//.data_in(data[17:14]),
	//.data_ref(data_ref),
	.data_in0(data_in14),
	.data_in1(data_in15),
	.data_in2(data_in16),
	.data_in3(data_in17),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[14])
	);
array array15(
	.clk(clk),
	//.data_in(data[18:15]),
	//.data_ref(data_ref),
	.data_in0(data_in15),
	.data_in1(data_in16),
	.data_in2(data_in17),
	.data_in3(data_in18),
	.data_ref00(data_ref00),
	.data_ref01(data_ref01),
	.data_ref02(data_ref02),
	.data_ref03(data_ref03),
	.data_ref10(data_ref10),
	.data_ref11(data_ref11),
	.data_ref12(data_ref12),
	.data_ref13(data_ref13),
	.data_ref20(data_ref20),
	.data_ref21(data_ref21),
	.data_ref22(data_ref22),
	.data_ref23(data_ref23),
	.data_ref30(data_ref30),
	.data_ref31(data_ref31),
	.data_ref32(data_ref32),
	.data_ref33(data_ref33),

	.mad(mad[15])
	);

comparator comparator1(
	.clk(clk),
	.compare(compare),
	.mad_12_16_in(mad_12_16_in),
	.mv_vertical(mv_vertical),
//	.min(min),
	.mvx(mvx),
	.mvy(mvy)
	);

ctl ctl1(
	.clk(clk),
	.rd1(rd1),
	.rd2(rd2),
	.addr1_0(addr1_0),
	.addr1_1(addr1_1),
	.addr2_0(addr2_0),
	.addr2_1(addr2_1),
	.mv_vertical(mv_vertical),
	.compare(compare)
	);
/*dmStore dmStore1(
	.mv(mv),
	.min(min)
	);  */
//ctl »¹Ã»ÓĞĞ´£¡£¡

endmodule