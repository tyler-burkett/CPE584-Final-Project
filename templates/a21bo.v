{?header?}

`celldefine
`timescale {?timescale?}


module {?lib?}_a21bo_{?drive?}  (
output {?out0?},

input {?in0?},
input {?in1?},
input {?in2?}

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


  wire csi_opt_289;

`ifdef functional
`else
reg csi_notifier;

	specify
		({?in0?} +=> {?out0?}) =  (0:0:0,0:0:0);
		({?in0?} -=> {?out0?}) =  (0:0:0,0:0:0);
		({?in1?} +=> {?out0?}) =  (0:0:0,0:0:0);
		({?in1?} -=> {?out0?}) =  (0:0:0,0:0:0);
		({?in2?} +=> {?out0?}) =  (0:0:0,0:0:0);
		({?in2?} -=> {?out0?}) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_289 , {?in1?} , {?in0?} ) ;
  nand  ( UDP_IN_X , {?in2?} , csi_opt_289 ) ;
  `ifdef SC_USE_PG_PIN

  {?lib?}_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, {?vpwr0?}, {?gvnd0?}) ;
  buf  ({?out0?}, UDP_OUT_X) ;
  `else
    buf ( {?out0?} , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine