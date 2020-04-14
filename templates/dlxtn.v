{?header?}

`celldefine
`timescale {?timescale?}



module {?lib?}_dlxtn_{?drive?}  (
output {?out0?},

input {?D0?},
input {?GATEN0?}

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



  wire gate;
  wire buf_Q;

`ifdef functional
    not ( gate , {?GATEN0?} ) ; 
`ifdef SC_USE_PG_PIN
 {?lib?}_pg_U_DL_P_NO_pg  ( buf_Q , {?D0?} , gate ,  , {?vpwr0?} , {?vgnd0?} ) ;
`else
 {?lib?}_pg_U_DL_P  ( buf_Q , {?D0?} , gate ) ;
`endif 
`else
  wire GATEN_delayed;
  wire D_delayed;
  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
{?lib?}_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , {?vpwr0?} , {?vgnd0?} ) ; 
`endif

  buf ( {?out0?} , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( {?vpwr0?} === 1'b1 ) ; 
	specify
		 ( {?D0?} +=> {?out0?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( negedge {?GATEN0?} => ( {?out0?} +: {?D0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( negedge {?GATEN0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge {?GATEN0?} , posedge {?D0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge {?GATEN0?} , negedge {?D0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine