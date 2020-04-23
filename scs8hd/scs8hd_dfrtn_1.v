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



module scs8hd_dfrtn_1  (
output Q,

input CLKN,
input D,
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

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intclk , CLKN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , intclk , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , intclk , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLKN_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intclk , CLKN_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , intclk , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge CLKN => ( Q : CLKN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLKN_delayed ) ; 
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLKN_delayed , D_delayed ) ; 
    
    $width ( posedge CLKN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLKN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine