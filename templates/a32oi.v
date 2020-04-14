{?header?}

`celldefine
`timescale {?timescale?}


module {?lib?}_a32oi_{?dive?}  (
output {?out0?},

input {?in0?},
input {?in1?},
input {?in2?},
input {?in3?},
input {?in4?}

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


  wire csi_opt_304;
  wire csi_opt_302;

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
		({?in4?} +=> {?out0?}) =   (0:0:0,0:0:0);
		({?in4?} -=> {?out0?}) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_304 , {?in1?} , {?in0?} , {?in2?} ) ;
  nand ( csi_opt_302 , {?in4?} , {?in3?} ) ;
  and  ( UDP_IN_Y , csi_opt_304 , csi_opt_302 ) ;
  `ifdef SC_USE_PG_PIN

  {?lib?}_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, {?vpwr0?}, {?vgnd0?}) ;
  buf  ({?out0?}, UDP_OUT_Y) ;
  `else
    buf ( {?out0?} , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
