


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2i_1  (
output Y,

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
		(A0 +=> Y) =   (0:0:0,0:0:0);
		(A0 -=> Y) =   (0:0:0,0:0:0);
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(posedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(posedge S => ( Y -: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y -: S)) =   (0:0:0,0:0:0);
	endspecify
`endif
   
  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1_INV (UDP_IN_Y, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
   
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine