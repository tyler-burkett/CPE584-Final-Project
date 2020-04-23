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


module scs8hd_nand4_2  (
output Y,

input A,
input B,
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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine