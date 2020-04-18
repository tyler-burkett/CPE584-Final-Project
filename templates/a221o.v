{#
	DESCRIPTION
		Two 2-input ands into 3-input or
	PARAMETER MAPPING
		in[0]	:	A1
		in[1]	:	A2
		in[2]	:	B1
		in[3]	:	B2
		in[4]	:	C1
		out[0]	:	X
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		({? in[0] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[0] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[1] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[1] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[2] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[2] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[3] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[3] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[4] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[4] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , {? in[2] ?} , {? in[3] ?} ) ;
  and ( csi_opt_274 , {? in[0] ?} , {? in[1] ?} ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 , {? in[4] ?} ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_X) ;
  `else
    buf ( {? out[0] ?} , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
