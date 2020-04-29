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



module scs8hd_sdfrbp_1  (
output Q,
output QN,

input CLK,
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
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( RESETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( RESETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine
