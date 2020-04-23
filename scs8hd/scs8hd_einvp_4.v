


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvp_4  (
output Z,

input A,
input TE

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


  `ifdef SC_USE_PG_PIN


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TE, TE, vpwr, vgnd) ;
notif1 (Z,UDP_OUT_A,UDP_OUT_TE);

  `else
    notif1 ( Z , A , TE ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine