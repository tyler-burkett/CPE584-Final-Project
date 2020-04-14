{?header?}

`celldefine
`timescale {?timescale?}



module {?lib?}_dlrbp_{?drive?}  (
output {?out0?},
output {?out1?},

input {?RESETB0?},
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


  wire reset;

`ifdef functional
  not ( reset , {?RESETB0?} ) ; 
`ifdef SC_USE_PG_PIN
 {?lib?}_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , {?D0?} , {?GATE0?} , reset ,  , {?vpwr0?} , {?vgnd0?} ) ;
`else
 {?lib?}_pg_U_DL_P_R #0.001 ( buf_Q , {?D0?} , {?GATE0?} , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATE_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
{?lib?}_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , GATE_delayed , reset , notifier , {?vpwr0?} , {?vgnd0?} ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( {?vpwr0?} === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( {?RESETB0?} === 1'b1 ) ) ; 
  specify
    ( negedge {?RESETB0?} => ( {?out0?} +: {?RESETB0?} ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( {?D0?} +=> {?out0?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge {?GATE0?} => ( {?out0?} : {?GATE0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    ( negedge {?RESETB0?} => ( {?out1?} -: {?RESETB0?} ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( {?D0?} -=> {?out1?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge {?GATE0?} => ( {?out1?} : {?GATE0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
     
    $recrem ( posedge {?RESETB0?} , negedge {?GATE0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATE_delayed ) ; 
    $setuphold ( negedge {?GATE0?} , posedge {?D0?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge {?GATE0?} , negedge {?D0?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $width ( posedge {?GATE0?} &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {?RESETB0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge {?RESETB0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( {?out0?} , buf_Q ) ; 
not ( {?out1?} , buf_Q ) ; 

endmodule
`endcelldefine