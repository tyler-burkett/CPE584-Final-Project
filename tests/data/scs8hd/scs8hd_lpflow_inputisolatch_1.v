// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Wed Aug 31 15:45:58 EDT 2011
// `suppress_faults;`enable_portfaults\n
// `ifdef TETRAMAX;`endif\n
// `ifdef functional;`timescale
// `ifndef dont_change_delay_mode;`endif\n
// `ifndef dont_change_delay_mode;`else\n
// `ifndef dont_change_delay_mode;`endif\n
// `endif;\n
// `disable_portfaults;`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Thu Aug 25 14:47:58 EDT 2011

// manually edited to fix script

`celldefine


`timescale 1ns / 1ps
module scs8hd_lpflow_inputisolatch_1  (

output Q,
input D,
input SLEEPB

`ifdef SC_USE_PG_PIN
,
input vpwr,
input vgnd,
input vpb,
input vnb
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
   scs8hd_lpflow_pg_U_DL_P_NO_pg  ( buf_Q , D , SLEEPB , 1'b0 , vpwr , vgnd ) ;
  `else
   scs8hd_lpflow_pg_U_DL_P  ( buf_Q , D , SLEEPB ) ;
  `endif
`else
  reg notifier;
  wire SLEEPB_delayed;
  wire D_delayed;
  scs8hd_lpflow_pg_U_DL_P_NO_pg  ( buf_Q , D_delayed , SLEEPB_delayed , notifier , vpwr , vgnd ) ;
`endif

  buf (Q,buf_Q);

`ifdef functional
`else
	specify
		(D +=> Q ) = (0:0:0,0:0:0);  // delays are tris,tfall
    
		(posedge SLEEPB => (Q +: D ) ) = (0:0:0,0:0:0); // delays are tris,tfall
    
		$width (posedge SLEEPB , 0:0:0, 0, notifier);
		$width (negedge SLEEPB , 0:0:0, 0, notifier);
    
    $setuphold ( negedge SLEEPB , posedge D , 0:0:0, 0:0:0, notifier , , , SLEEPB_delayed , D_delayed ) ;
    $setuphold ( negedge SLEEPB , negedge D , 0:0:0, 0:0:0, notifier , , , SLEEPB_delayed , D_delayed ) ;
	endspecify
`endif

endmodule
`endcelldefine
