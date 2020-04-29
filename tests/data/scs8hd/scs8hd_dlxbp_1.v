// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:21 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:35 EDT 2011

`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxbp_1  (
output Q,
output QN,

input D,
input GATE

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
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg #0.001 ( buf_Q , D , GATE ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P #0.001 ( buf_Q , D , GATE ) ;
`endif 
`else
  wire GATE_delayed;
  wire D_delayed;
  reg notifier ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , GATE_delayed , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( posedge GATE => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
		 ( posedge GATE => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
		$width ( posedge GATE &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine
