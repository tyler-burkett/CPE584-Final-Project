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
module scs8hd_lpflow_lsbuf_lh_isowell_tap_2  (

output X,
input A

`ifdef SC_USE_PG_PIN
,
input lowlvpwr,
input vpwr,
input vgnd,
input vpb
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 vpwr;
supply0 vgnd;
supply1 vpb;
`endif
`endif


`ifdef functional
`else
  reg csi_notifier;
	specify
    (A +=> X) = (0:0:0,0:0:0);
	endspecify
`endif

`ifdef SC_USE_PG_PIN
  scs8hd_lpflow_pg_U_VPWR_VGND (UDP_OUT_A, A, lowlvpwr, vgnd) ;
  buf  (UDP_OUT_X, UDP_OUT_A) ;
  scs8hd_lpflow_pg_U_VPWR_VGND  (X, UDP_OUT_X, vpwr, vgnd) ; 
`else
    buf ( X , A ) ;
`endif

endmodule
`endcelldefine
