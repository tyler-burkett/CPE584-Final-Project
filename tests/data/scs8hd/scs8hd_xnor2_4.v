// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:29 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:37 EDT 2011

`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor2_4  (
output Y,

input A,
input B

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
		(posedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xnor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
