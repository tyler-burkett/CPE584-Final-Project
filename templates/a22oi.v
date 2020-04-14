{?header?}

`celldefine
`timescale {?timescale?}


module {?lib?}_a22oi_{?drive?}  (
output {?out0?},

input {?in0?},
input {?in1?},
input {?in2?},
input {?in3?}

`ifdef SC_USE_PG_PIN
, input {?vpwr0?}
, input {?vgnd0?}
, input {?vpb0?}
, input {?vnb0?}
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 {?vpwr0?};
supply0 {?vgnd0?};
supply1 {?vpb0?};
supply0 {?vnb0?};
`endif
`endif


  wire csi_opt_298;
  wire csi_opt_296;

`ifdef functional
`else
reg csi_notifier;

	specify
		({?in0?} +=> {?out0?}) =   (0:0:0,0:0:0);
		({?in0?} -=> {?out0?}) =   (0:0:0,0:0:0);
		({?in1?} +=> {?out0?}) =   (0:0:0,0:0:0);
		({?in1?} -=> {?out0?}) =   (0:0:0,0:0:0);
		({?in2?} +=> {?out0?}) =   (0:0:0,0:0:0);
		({?in2?} -=> {?out0?}) =   (0:0:0,0:0:0);
		({?in3?} +=> {?out0?}) =   (0:0:0,0:0:0);
		({?in3?} -=> {?out0?}) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_298 , {?in1?} , {?in0?} ) ;
  nand ( csi_opt_296 , {?in3?} , {?in2?} ) ;
  and  ( UDP_IN_Y , csi_opt_298 , csi_opt_296 ) ;
  `ifdef SC_USE_PG_PIN

  {?lib?}_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, {?vpwr0?}, {?vgnd0?}) ;
  buf  ({?out0?}, UDP_OUT_Y) ;
  `else
    buf ( {?out0?} , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
