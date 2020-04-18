{#
	DESCRIPTION
		Pos Edge Scan D-Flip Flop with async reset and async set (q and qb)
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	SCD
		in[2]	:	SCE
		in[3]	:	CLK
		in[4]	:	SETB
		in[5]	:	RESETB
		out[0]	:	Q
		out[1]	:	QN
-#}


{? header ?}


// manually edited to fix tmax warnings-jfe

`celldefine
`timescale 1ns / 1ps



module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},
output {? out[1] ?},
input {? in[0] ?},
input {? in[1] ?},
input {? in[2] ?},
input {? in[3] ?},
input {? in[4] ?},
input {? in[5] ?}

`ifdef SC_USE_PG_PIN
, input {? vpwr[0] ?}
, input {? vgnd[0] ?}
, input {? vpb[0] ?}
, input {? vnb[0] ?}
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 {? vpwr[0] ?};
supply0 {? vgnd[0] ?};
supply1 {? vpb[0] ?};
supply0 {? vnb[0] ?};
`endif
`endif

  
  wire reset;
  wire set;
  wire buf_Q;
  
`ifdef functional
    not ( reset , {? in[5] ?} ) ; 
    not ( set , {? in[4] ?} ) ; 
    {? lib ?}_pg_U_MUX_2_1 ( mux_out , {? in[0] ?} , {? in[1] ?} , {? in[2] ?} ) ; 
    `ifdef SC_USE_PG_PIN
     {? lib ?}_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , {? in[3] ?} , mux_out ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
    `else
     {? lib ?}_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , {? in[3] ?} , mux_out ) ;
    `endif 
`else
    reg notifier ; 

  wire clk;
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  wire SETB_delayed;
  wire RESETB_delayed;
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    {? lib ?}_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
    {? lib ?}_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , CLK_delayed , mux_out , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
  wire COND_D;
  wire COND_SCD;
  wire COND_SCE;
    assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
    assign COND_D = ( ( SCE_delayed === 1'b0 ) && CONDB ) ; 
    assign COND_SCD = ( ( SCE_delayed === 1'b1 ) && CONDB ) ; 
    assign COND_SCE = ( ( D_delayed !== SCD_delayed ) && CONDB ) ; 
	specify
		 ( negedge {? in[5] ?} => ( {? out[0] ?} +: {? in[5] ?} ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge {? in[5] ?} => ( {? out[1] ?} -: {? in[5] ?} ) ) = 0:0:0 ;  // delay is tris

		 ( {? in[4] ?} => ( {? out[0] ?} -: {? in[4] ?} ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( {? in[4] ?} => ( {? out[1] ?} +: {? in[4] ?} ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( posedge {? in[3] ?} => ( {? out[0] ?} +: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( posedge {? in[3] ?} => ( {? out[1] ?} -: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge {? in[4] ?} , posedge {? in[3] ?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLK_delayed ) ; 
    $recrem ( posedge {? in[5] ?} , posedge {? in[3] ?} , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLK_delayed ) ; 
	   
    $setuphold ( posedge {? in[3] ?} , posedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[3] ?} , negedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLK_delayed , D_delayed ) ; 
	   
    $setuphold ( posedge {? in[3] ?} , posedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge {? in[3] ?} , negedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLK_delayed , SCD_delayed ) ; 
	   
    $setuphold ( posedge {? in[3] ?} , posedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge {? in[3] ?} , negedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLK_delayed , SCE_delayed ) ; 

    $setuphold ( posedge {? in[4] ?} , posedge {? in[5] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge {? in[5] ?} , posedge {? in[4] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ; 

		$width ( negedge {? in[3] ?} &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge {? in[3] ?} &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {? in[4] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {? in[5] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

	endspecify

   
`endif
  buf ( {? out[0] ?} , buf_Q ) ; 
  not ( {? out[1] ?} , buf_Q ) ; 


endmodule
`endcelldefine
