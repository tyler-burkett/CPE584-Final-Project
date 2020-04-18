{#
	DESCRIPTION
		One 3-input & one 2-input or into 2-input and
	PARAMETER MAPPING
		in[0]	:	A1
		in[1]	:	A2
		in[2]	:	A3
		in[3]	:	B1
		in[4]	:	B2
		out[0]	:	Y
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output X,

input {? in[0] ?},
input {? in[1] ?},
input {? in[2] ?},
input {? in[3] ?},
input {? in[4] ?}

`ifdef SC_USE_PG_PIN
, input {? vpwr[0] ?}
, input {? vgnd[0] ?}
, input {? vpb[0] ?}
, input {? vnb[0] ?}
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 {? vpwr[0] ?};
supply0 {? vgnd[0] ?};
supply1 {? vpb[0] ?};
supply0 {? vnb[0] ?};
`endif
`endif


  wire csi_opt_299;
  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		({? in[0] ?} +=> X) =  (0:0:0,0:0:0);
		({? in[0] ?} -=> X) =  (0:0:0,0:0:0);
		({? in[1] ?} +=> X) =  (0:0:0,0:0:0);
		({? in[1] ?} -=> X) =  (0:0:0,0:0:0);
		({? in[2] ?} +=> X) =  (0:0:0,0:0:0);
		({? in[2] ?} -=> X) =  (0:0:0,0:0:0);
		({? in[3] ?} +=> X) =  (0:0:0,0:0:0);
		({? in[3] ?} -=> X) =  (0:0:0,0:0:0);
		({? in[4] ?} +=> X) =  (0:0:0,0:0:0);
		({? in[4] ?} -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , {? in[1] ?} , {? in[0] ?} , {? in[2] ?} ) ;
  or ( csi_opt_297 , {? in[4] ?} , {? in[3] ?} ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
