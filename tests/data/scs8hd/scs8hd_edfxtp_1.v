// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:22 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:35 EDT 2011

`celldefine
`timescale 1ns / 1ps



module scs8hd_edfxtp_1  (
output Q,
input CLK,
input D,
input DE

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

`ifdef functional
   scs8hd_pg_U_MUX_2_1 ( mux_out , buf_Q , D , DE )  ; 
  `ifdef SC_USE_PG_PIN
    scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ; 
  `else
    scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif

`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , buf_Q , D_delayed , DE_delayed )  ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( DE_delayed === 1'b1 ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine
