


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2_8  (
output X,

input A0,
input A1,
input S

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
		(posedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(posedge S => ( X -: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X -: S)) =  (0:0:0,0:0:0);
	endspecify
`endif

  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1 (UDP_IN_X, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine