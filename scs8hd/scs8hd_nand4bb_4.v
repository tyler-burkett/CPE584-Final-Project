


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4bb_4  (
output Y,

input AN,
input BN,
input C,
input D

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
    (AN +=> Y) = (0:0:0,0:0:0);
    (BN +=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (D -=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , D , C ) ;
  or  ( UDP_IN_Y , BN , AN , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine