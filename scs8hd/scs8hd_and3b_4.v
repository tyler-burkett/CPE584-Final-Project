


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3b_4  (
output X,

input AN,
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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , AN ) ;
  and  ( UDP_IN_X , C , csi_opt_280 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine