


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4bb_2  (
output X,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(B +=> X) =    (0:0:0,0:0:0);
		(B -=> X) =    (0:0:0,0:0:0);
		(CN +=> X) =    (0:0:0,0:0:0);
		(CN -=> X) =    (0:0:0,0:0:0);
		(DN +=> X) =    (0:0:0,0:0:0);
		(DN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , DN , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine