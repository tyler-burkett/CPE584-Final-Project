{#
	DESCRIPTION
		One 4-input or into 2-input nand
	PARAMETER MAPPING
		in[0]	:	A1
		in[1]	:	A2
		in[2]	:	A3
		in[3]	:	A4
		in[4]	:	B1
		out[0]	:	Y
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


  wire csi_opt_297;

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

  or ( csi_opt_297 , {? in[3] ?} , {? in[2] ?} , {? in[1] ?} , {? in[0] ?} ) ;
  nand  ( UDP_IN_Y , {? in[4] ?} , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_Y) ;
  `else
    buf ( {? out[0] ?} , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
