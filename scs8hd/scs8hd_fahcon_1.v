


`celldefine
`timescale 1ns / 1ps


module scs8hd_fahcon_1  (
output COUTN,
output SUM,
input A,
input B,
input CI

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
		(A +=> COUTN) =  (0:0:0,0:0:0);
		(A -=> COUTN) =  (0:0:0,0:0:0);
		(B +=> COUTN) =  (0:0:0,0:0:0);
		(B -=> COUTN) =  (0:0:0,0:0:0);
		(CI +=> COUTN) =  (0:0:0,0:0:0);
		(CI -=> COUTN) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CI => ( SUM +: CI)) =  (0:0:0,0:0:0);
		(posedge CI => ( SUM -: CI)) =  (0:0:0,0:0:0);
		(negedge CI => ( SUM +: CI)) =  (0:0:0,0:0:0);
		(negedge CI => ( SUM -: CI)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor (UDP_IN_SUM,A,B,CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;
  
  `else
    buf ( SUM , UDP_IN_SUM ) ;
  `endif
  nor (A$B,A,B),(A$CI,A,CI),(B$CI,B,CI);
  or (UDP_IN_COUTN,A$B,A$CI,B$CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUTN, UDP_IN_COUTN, vpwr, vgnd) ;
  buf  (COUTN, UDP_OUT_COUTN) ;


  `else
    buf  ( COUTN , UDP_IN_COUTN ) ;
  `endif
endmodule
`endcelldefine