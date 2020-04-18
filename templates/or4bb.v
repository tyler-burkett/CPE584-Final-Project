{#
	DESCRIPTION
		4-input or (2 inverted inputs)
	PARAMETER MAPPING
		in[0]	:	A
		in[1]	:	B
		in[2]	:	CN
		in[3]	:	DN
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


  wire csi_opt_283;

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

  nand ( csi_opt_283 , {? in[3] ?} , {? in[2] ?} ) ;
  or  ( UDP_IN_X , {? in[1] ?} , {? in[0] ?} , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_X) ;
  `else
    buf ( {? out[0] ?} , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine
