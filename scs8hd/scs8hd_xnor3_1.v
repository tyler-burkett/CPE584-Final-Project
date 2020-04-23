


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor3_1  (
output X,
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
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xnor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine