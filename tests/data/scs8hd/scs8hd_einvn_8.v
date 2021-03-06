// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Tue Aug 23 13:13:22 EDT 2011
// \`suppress_faults;^\n
// \`ifdef TETRAMAX;^\n
// \`ifdef functional;\`else
// \`delay_mode_path;^\n
// \`disable_portfaults;\`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Tue Aug 23 12:32:35 EDT 2011

`celldefine
`timescale 1ns / 1ps



module scs8hd_einvn_8  (
output Z,

input A,
input TEB

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


  `ifdef SC_USE_PG_PIN


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
notif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    notif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine
