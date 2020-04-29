// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:28 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:37 EDT 2011

`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfbbn_2  (
output Q,
output QN,
input D,
input SCD,
input SCE,
input CLKN,
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
  wire clk;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    not ( clk , CLKN ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , clk , mux_out ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , clk , mux_out ) ;
    `endif 
`else
    reg notifier ; 

  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLKN_delayed;
  wire SETB_delayed;
  wire RESETB_delayed;
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    not ( clk , CLKN_delayed ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , clk , mux_out , notifier , vpwr , vgnd ) ; 
    
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

		 ( negedge CLKN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( negedge CLKN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLKN_delayed ) ; 
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLKN_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLKN_delayed , D_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLKN_delayed , SCD_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLKN_delayed , SCE_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLKN_delayed , SCE_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ; 


		$width ( negedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine
