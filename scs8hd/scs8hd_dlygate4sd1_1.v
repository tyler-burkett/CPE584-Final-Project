


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlygate4sd1_1  (
output X,
input A


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


// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;


  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine