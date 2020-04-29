// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:21 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:35 EDT 2011

// manually edited to fix TMAX warnings-jfe

`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxtn_4  (
output Q,

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



  wire gate;
  wire buf_Q;

`ifdef functional
    not ( gate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( buf_Q , D , gate ) ;
`endif 
`else
  wire GATEN_delayed;
  wire D_delayed;
  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine
