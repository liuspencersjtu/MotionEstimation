
module array(
	input wire	clk,
	//input wire	pause,
	input wire [7:0]data_in0,
	input wire [7:0]data_in1,
	input wire [7:0]data_in2,
	input wire [7:0]data_in3,
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
	output reg [11:0]mad
	);
	reg [7:0] re[3:0][3:0];
	wire [7:0] w[3:0][3:0];
	wire [7:0] abs[3:0][3:0];
	wire [11:0]mad_wire;
	genvar i,j;

	always @(posedge clk) begin
		//if () begin
			// reset
			
		//end
		//else  begin
			re[0][0]<=data_in0;
			re[0][1]<=data_in1;
			re[0][2]<=data_in2;
			re[0][3]<=data_in3;
			re[1][0]<=re[0][0];
			re[1][1]<=re[0][1];
			re[1][2]<=re[0][2];
			re[1][3]<=re[0][3];
			re[2][0]<=re[1][0];
			re[2][1]<=re[1][1];
			re[2][2]<=re[1][2];
			re[2][3]<=re[1][3];
			re[3][0]<=re[2][0];
			re[3][1]<=re[2][1];
			re[3][2]<=re[2][2];
			re[3][3]<=re[2][3];
			//re[3][3:0]<=re[2][3:0];
		//end
	end

	//there is a FOR loop ,may have problems during synthesis,ATTENTION!!!!!
	assign w[0][0];
	assign w[0][1];
	assign w[0][2];
	assign w[0][3];
	assign w[1][0];
	assign w[1][1];
	assign w[1][2];
	assign w[1][3];
	assign w[2][0];
	assign w[2][1];
	assign w[2][2];
	assign w[2][3];
	assign w[3][0];
	assign w[3][1];
	assign w[3][2];
	assign w[3][3];
	

	pe pe00(.data1(w[0][0]),.data2(data_ref00),.data_out(abs[0][0]));
	pe pe01(.data1(w[0][1]),.data2(data_ref01),.data_out(abs[0][1]));
	pe pe02(.data1(w[0][2]),.data2(data_ref02),.data_out(abs[0][2]));
	pe pe03(.data1(w[0][3]),.data2(data_ref03),.data_out(abs[0][3]));
	pe pe10(.data1(w[1][0]),.data2(data_ref10),.data_out(abs[1][0]));
	pe pe11(.data1(w[1][1]),.data2(data_ref11),.data_out(abs[1][1]));
	pe pe12(.data1(w[1][2]),.data2(data_ref12),.data_out(abs[1][2]));
	pe pe13(.data1(w[1][3]),.data2(data_ref13),.data_out(abs[1][3]));
	pe pe20(.data1(w[2][0]),.data2(data_ref20),.data_out(abs[2][0]));
	pe pe21(.data1(w[2][1]),.data2(data_ref21),.data_out(abs[2][1]));
	pe pe22(.data1(w[2][2]),.data2(data_ref22),.data_out(abs[2][2]));
	pe pe23(.data1(w[2][3]),.data2(data_ref23),.data_out(abs[2][3]));
	pe pe30(.data1(w[3][0]),.data2(data_ref30),.data_out(abs[3][0]));
	pe pe31(.data1(w[3][1]),.data2(data_ref31),.data_out(abs[3][1]));
	pe pe32(.data1(w[3][2]),.data2(data_ref32),.data_out(abs[3][2]));
	pe pe33(.data1(w[3][3]),.data2(data_ref33),.data_out(abs[3][3]));

	assign mad_wire = abs[0][0]+abs[0][1]+abs[0][2]+abs[0][3]
					+abs[1][0]+abs[1][1]+abs[2][2]+abs[3][3]
					+abs[2][0]+abs[2][1]+abs[2][2]+abs[2][3]
					+abs[3][0]+abs[3][1]+abs[3][2]+abs[3][3];

	always @(posedge clk) begin
		mad<=mad_wire;
	end
endmodule
