{#
	DESCRIPTION
		Enabled buffer (active low enable)
	PARAMETER MAPPING
		in[0]	:	A
		in[1]	:	TEB
		out[0]	:	Z
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps



module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},

input {? in[0] ?},
input {? in[1] ?}

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

  `ifdef SC_USE_PG_PIN


  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_A, {? in[0] ?}, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_TEB, {? in[1] ?}, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
bufif0 ({? out[0] ?},UDP_OUT_A,UDP_OUT_TEB);

  `else
    bufif0 ( {? out[0] ?} , {? in[0] ?} , {? in[1] ?} ) ;
  `endif
`ifdef functional
`else
	specify
		({? in[0] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		({? in[0] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		({? in[1] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		({? in[1] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine
