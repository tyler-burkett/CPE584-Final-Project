// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:20 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:34 EDT 2011

`celldefine
`timescale 1ns / 1ps


module scs8hd_and4bb_2  (
output X,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =    (0:0:0,0:0:0);
		(AN -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
		(C +=> X) =    (0:0:0,0:0:0);
		(C -=> X) =    (0:0:0,0:0:0);
		(D +=> X) =    (0:0:0,0:0:0);
		(D -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , AN , BN ) ;
  and  ( UDP_IN_X , csi_opt_278 , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
