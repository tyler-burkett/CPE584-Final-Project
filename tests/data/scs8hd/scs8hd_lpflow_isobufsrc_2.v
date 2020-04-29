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

`celldefine


`timescale 1ns / 1ps
module scs8hd_lpflow_isobufsrc_2  (

output X,
input SLEEP,
input A

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
    (SLEEP -=> X) = (0:0:0,0:0:0);
    (A +=> X) = (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , SLEEP ) ;
  and  ( UDP_IN_X , csi_opt_276 , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_lpflow_pg_U_VPWR_VGND_SLEEP (UDP_OUT_X, UDP_IN_X, vpwr, vgnd, SLEEP) ;
  buf  (X, UDP_OUT_X) ;
 
`else
    buf  ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
