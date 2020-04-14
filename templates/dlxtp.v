{?header?}

`celldefine
`timescale {?timescale?}



module {?lib?}_dlxtp_{?drive?}  (
output {?out0?},

input {?D0?},
input {?GATE0?}

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



  wire buf_Q;

`ifdef functional
`ifdef SC_USE_PG_PIN
 {?lib?}_pg_U_DL_P_NO_pg  ( buf_Q , {?D0?} , {?GATE0?} ,  , {?vpwr0?} , {?vgnd0?} ) ;
`else
 {?lib?}_pg_U_DL_P  ( buf_Q , {?D0?} , {?GATE0?} ) ;
`endif 
`else
  wire GATE_delayed;
  wire D_delayed;
  reg notifier ; 
{?lib?}_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , GATE_delayed , notifier , {?vpwr0?} , {?vgnd0?} ) ; 
`endif

  buf ( {?out0?} , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE= ( {?vpwr0?} === 1'b1 ) ; 
	specify
		 ( {?D0?} +=> {?out0?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( posedge {?GATE0?} => ( {?out0?} +: {?D0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( posedge {?GATE0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( negedge {?GATE0?} , posedge {?D0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge {?GATE0?} , negedge {?D0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine
