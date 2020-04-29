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



module scs8hd_sdfrtn_1  (
output Q,

input CLKN,
input D,
input SCD,
input SCE,
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


  wire buf_Q;
  wire reset;
  wire intclk;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intclk , CLKN ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , intclk , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , intclk , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLKN_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intclk , CLKN_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , intclk , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge CLKN => ( Q : CLKN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLKN_delayed ) ; 
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLKN_delayed , SCE_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLKN_delayed , SCE_delayed ) ; 
    $width ( posedge CLKN &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLKN &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine
