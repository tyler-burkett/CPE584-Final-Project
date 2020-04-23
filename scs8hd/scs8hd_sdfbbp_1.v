


// manually edited to fix tmax warnings-jfe

`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfbbp_1  (
output Q,
output QN,
input D,
input SCD,
input SCE,
input CLK,
input SETB,
input RESETB

`ifdef SC_USE_PG_PIN
, input vpwr
, input vgnd
, input vpb
, input vnb
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 vpwr;
supply0 vgnd;
supply1 vpb;
supply0 vnb;
`endif
`endif

  
  wire reset;
  wire set;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , CLK , mux_out ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , CLK , mux_out ) ;
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
    scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , CLK_delayed , mux_out , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
  wire COND_D;
  wire COND_SCD;
  wire COND_SCE;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
    assign COND_D = ( ( SCE_delayed === 1'b0 ) && CONDB ) ; 
    assign COND_SCD = ( ( SCE_delayed === 1'b1 ) && CONDB ) ; 
    assign COND_SCE = ( ( D_delayed !== SCD_delayed ) && CONDB ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( posedge CLK => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( posedge CLK => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLK_delayed ) ; 
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLK_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLK_delayed , D_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLK_delayed , SCD_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLK_delayed , SCE_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ; 

		$width ( negedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine