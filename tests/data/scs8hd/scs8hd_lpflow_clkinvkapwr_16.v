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
// iptguser	Thu Aug 25 14:47:57 EDT 2011

`celldefine


`timescale 1ns / 1ps
module scs8hd_lpflow_clkinvkapwr_16  (

output Y,
input A

`ifdef SC_USE_PG_PIN
,
input kapwr,
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
supply1 kapwr;
supply1 vpwr;
supply0 vgnd;
supply1 vpb;
supply0 vnb;
`endif
`endif


// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  (UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_lpflow_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, kapwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;

 
`else
    buf  ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
