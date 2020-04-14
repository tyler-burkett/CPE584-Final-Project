{?header?}

`celldefine
`timescale {?timescale?}


module {?lib?}_a22o_{?drive?}  (
output {?out0?},

input {?in0?},
input {?in1?},
input {?in2?},
input {?in3?}

`ifdef SC_USE_PG_PIN
, input {?vpwr0?}
, input {?vgnd0?}
, input {?vnb0?}
, input {?vpb0?}
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 {?vpwr0?};
supply0 {?vgnd0?};
supply1 {?vnb0?};
supply0 {?vpb0?};
`endif
`endif


  wire csi_opt_273;
  wire csi_opt_274;

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
		({?in3?} +=> {?out0?}) =  (0:0:0,0:0:0);
		({?in3?} -=> {?out0?}) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , {?in2?} , {?in3?} ) ;
  and ( csi_opt_274 , {?in0?} , {?in1?} ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  {?lib?}_pg_U_{?vpwr0?}_VGND (UDP_OUT_X, UDP_IN_X, {?vpwr0?}, {?vgnd0?}) ;
  buf  ({?out0?}, UDP_OUT_X) ;
  `else
    buf ( {?out0?} , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
