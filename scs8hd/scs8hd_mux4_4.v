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


module scs8hd_mux4_4  (
output X,

input A0,
input A1,
input A2,
input A3,
input S0,
input S1

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
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(posedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(posedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
	endspecify
`endif

// aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_4_2 (UDP_IN_X, A0, A1, A2, A3, S0, S1);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
 
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine