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


module scs8hd_fahcin_1  (
output COUT,
output SUM,
input A,
input B,
input CIN

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
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(CIN +=> COUT) =  (0:0:0,0:0:0);
		(CIN -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
	endspecify
`endif

  not(CI,CIN);
  xor (UDP_IN_SUM,A,B,CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf ( SUM , UDP_IN_SUM ) ;
  `endif
  and (A$B,A,B),(A$CI,A,CI),(B$CI,B,CI);
  or (UDP_IN_COUT,A$B,A$CI,B$CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;


  `else
    buf  ( COUT , UDP_IN_COUT ) ;
  `endif
endmodule
`endcelldefine
