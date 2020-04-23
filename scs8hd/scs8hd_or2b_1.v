


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2b_1  (
output X,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , BN ) ;
  or  ( UDP_IN_X , csi_opt_276 , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine