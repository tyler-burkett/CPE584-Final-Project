


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22a_4  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_294;
  wire csi_opt_292;

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
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  or ( csi_opt_292 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine