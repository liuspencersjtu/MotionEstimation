`ifndef ARRAY_PACK_UNPACK_V
`ifdef PACK_ARRAY
$finish; // macro PACK_ARRAY already exists. refusing to redefine.
`endif
`ifdef UNPACK_ARRAY
$finish; // macro UNPACK_ARRAY already exists. refusing to redefine.
`endif

`define ARRAY_PACK_UNPACK_V 1
`define PACK_ARRAY(PK_WIDTH,PK_LEN,PK_SRC,PK_DEST) genvar pk_idx; generate for (pk_idx=0; pk_idx<(PK_LEN); pk_idx=pk_idx+1) begin; assign PK_DEST[((PK_WIDTH)*pk_idx+((PK_WIDTH)-1)):((PK_WIDTH)*pk_idx)] = PK_SRC[pk_idx][((PK_WIDTH)-1):0]; end endgenerate
`define UNPACK_ARRAY(PK_WIDTH,PK_LEN,PK_DEST,PK_SRC)  genvar unpk_idx; generate for (unpk_idx=0; unpk_idx<(PK_LEN); unpk_idx=unpk_idx+1) begin; assign PK_DEST[unpk_idx][((PK_WIDTH)-1):0] = PK_SRC[((PK_WIDTH)*unpk_idx+(PK_WIDTH-1)):((PK_WIDTH)*unpk_idx)]; end endgenerate
`endif