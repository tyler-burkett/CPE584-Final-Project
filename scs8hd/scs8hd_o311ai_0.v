


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311ai_0  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_299 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine