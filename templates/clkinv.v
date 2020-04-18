{#
	DESCRIPTION
		Clock inverter (balanced rise/fall)
	PARAMETER MAPPING
		in[0]	:	A
		out[0]	:	Y
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},

input {? in[0] ?}

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



`ifdef functional
`else
reg csi_notifier;

	specify
		({? in[0] ?} -=> {? out[0] ?} ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , {? in[0] ?} ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_Y) ;
  `else
    buf ( {? out[0] ?} , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
