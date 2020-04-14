{?header?}

`celldefine
`timescale {?timescale?}



module {?lib?}_dfxtp_{?drive?}  (
output {?out0?},

input {?CLK0?},
input {?D0?}

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
   {?lib?}_pg_U_DF_P_NO_pg #0.001 ( buf_Q , {?D0?} , {?CLK0?} ,  , {?vpwr0?} , {?vgnd0?} ) ;
  `else
   {?lib?}_pg_U_DF_P #0.001 ( buf_Q , {?D0?} , {?CLK0?} ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  {?lib?}_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , {?vpwr0?} , {?vgnd0?} ) ; 

  wire AWAKE;
  assign AWAKE = ( {?vpwr0?} === 1'b1 ) ; 
  specify
    ( posedge {?CLK0?} => ( {?out0?} : {?CLK0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge {?CLK0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {?CLK0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge {?CLK0?} , posedge {?D0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {?CLK0?} , negedge {?D0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( {?out0?} , buf_Q ) ; 

endmodule
`endcelldefine
