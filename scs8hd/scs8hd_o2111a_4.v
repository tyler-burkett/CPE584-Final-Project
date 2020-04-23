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


module scs8hd_o2111a_4  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 ) ;
  and  ( UDP_IN_X , B1 , C1 , csi_opt_300 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine