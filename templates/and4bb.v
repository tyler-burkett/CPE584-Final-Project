{#
	DESCRIPTION
		4-input and (2 inverted inputs)
	PARAMETER MAPPING
		in[0]	:	AN
		in[1]	:	BN
		in[2]	:	C
		in[3]	:	D
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
input {? in[3] ?}

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		({? in[0] ?} +=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[0] ?} -=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[1] ?} +=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[1] ?} -=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[2] ?} +=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[2] ?} -=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[3] ?} +=> {? out[0] ?}) =    (0:0:0,0:0:0);
		({? in[3] ?} -=> {? out[0] ?}) =    (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , {? in[0] ?} , {? in[1] ?} ) ;
  and  ( UDP_IN_X , csi_opt_278 , {? in[2] ?} , {? in[3] ?} ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_X) ;
  `else
    buf ( {? out[0] ?} , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
