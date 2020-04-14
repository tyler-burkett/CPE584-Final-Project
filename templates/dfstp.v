{?header?}

`celldefine
`timescale {?timescale?}



module {?lib?}_dfstp_{?drive?}  (
output {?out0?},

input {?CLK0?},
input {?D0?},
input {?SETB0?}

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
  wire set;

`ifdef functional
  not ( set , {?SETB0?} ) ; 
`ifdef SC_USE_PG_PIN
 {?lib?}_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , {?D0?} , {?CLK0?} , set ,  , {?vpwr0?} , {?vgnd0?} ) ;
`else
 {?lib?}_pg_U_DF_P_S #0.001 ( buf_Q , {?D0?} , {?CLK0?} , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
{?lib?}_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , {?vpwr0?} , {?vgnd0?} ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( {?vpwr0?} === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( {?SETB0?} === 1'b1 ) ; 
  specify
    ( negedge {?SETB0?} => ( {?out0?} -: {?SETB0?} ) ) = 0:0:0 ;  // delay is tris
    ( posedge {?CLK0?} => ( {?out0?} : {?CLK0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge {?SETB0?} , posedge {?CLK0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge {?CLK0?} , posedge {?D0?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {?CLK0?} , negedge {?D0?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge {?CLK0?} &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {?CLK0?} &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {?SETB0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( {?out0?} , buf_Q ) ; 

endmodule
`endcelldefine
