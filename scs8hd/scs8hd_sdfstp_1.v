// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfstp_1  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input SETB

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
  wire set;
  wire mux_out;

`ifdef functional
  not ( set , SETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , mux_out , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , mux_out , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , mux_out , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( SETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( SETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine