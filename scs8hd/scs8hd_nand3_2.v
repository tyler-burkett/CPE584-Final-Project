


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3_2  (
output Y,

input A,
input B,
input C

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
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine