// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:25 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:36 EDT 2011

`celldefine
`timescale 1ns / 1ps


module scs8hd_o22ai_1  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
