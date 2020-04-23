


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4bb_1  (
output Y,

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (CN +=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , A , B ) ;
  and  ( UDP_IN_Y , csi_opt_278 , CN , DN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine