{?header?}

`celldefine
`timescale {?timescale?}



module {?lib?}_dfbbp_{?drive?}  (
output {?out0?},
output {?out1?},
input {?D0?},
input {?CLK0?},
input {?SETB0?},
input {?RESETB0?}

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
  wire set;
  wire buf_Q;
  
`ifdef functional
    not ( reset , {?RESETB0?} ) ; 
    not ( set , {?SETB0?} ) ; 
    `ifdef SC_USE_PG_PIN
     {?lib?}_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , {?CLK0?} , {?D0?} ,  , {?vpwr0?} , {?vgnd0?} ) ;
    `else
     {?lib?}_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , {?CLK0?} , {?D0?} ) ;
    `endif 
`else
  wire CLK_delayed;
  wire RESETB_delayed;
  wire SETB_delayed;
    reg notifier ; 
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    {?lib?}_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , CLK_delayed , D_delayed , notifier , {?vpwr0?} , {?vgnd0?} ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
    assign AWAKE = ( {?vpwr0?} === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
	specify
		 ( negedge {?RESETB0?} => ( {?out0?} +: {?RESETB0?} ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge {?RESETB0?} => ( {?out1?} -: {?RESETB0?} ) ) = 0:0:0 ;  // delay is tris

		 ( {?SETB0?} => ( {?out0?} -: {?SETB0?} ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( {?SETB0?} => ( {?out1?} +: {?SETB0?} ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( posedge {?CLK0?} => ( {?out0?} +: {?D0?} ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( posedge {?CLK0?} => ( {?out1?} -: {?D0?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge {?SETB0?} , posedge {?CLK0?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLK_delayed ) ; 
    $recrem ( posedge {?RESETB0?} , posedge {?CLK0?} , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLK_delayed ) ; 
	   
    $setuphold ( posedge {?CLK0?} , posedge {?D0?} , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {?CLK0?} , negedge {?D0?} , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLK_delayed , D_delayed ) ; 


    $setuphold ( posedge {?SETB0?} , posedge {?RESETB0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge {?RESETB0?} , posedge {?SETB0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , SETB_delayed  ) ;

		$width ( negedge {?CLK0?} &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge {?CLK0?} &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {?SETB0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {?RESETB0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
	endspecify

   
`endif
  buf ( {?out0?} , buf_Q ) ; 
  not ( {?out1?} , buf_Q ) ; 


endmodule
`endcelldefine

