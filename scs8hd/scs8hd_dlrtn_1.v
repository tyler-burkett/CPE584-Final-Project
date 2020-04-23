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



module scs8hd_dlrtn_1  (
output Q,

input RESETB,
input D,
input GATEN

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
  wire intgate;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intgate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , intgate , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( Q : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $recrem ( posedge RESETB , posedge GATEN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge GATEN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine