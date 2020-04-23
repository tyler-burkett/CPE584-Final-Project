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


module scs8hd_and4_2  (
output X,

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
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine