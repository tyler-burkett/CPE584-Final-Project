{#
	DESCRIPTION
		Half-adder
	PARAMETER MAPPING
		in[0]	:	A
		in[1]	:	B
		out[0]	:	COUT
		out[1]	:	SUM
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},
output {? out[1] ?},

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



`ifdef functional
`else
reg csi_notifier;

	specify
		({? in[0] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[0] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[1] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[1] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		(posedge {? in[0] ?} => ( {? out[1] ?} +: {? in[0] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[0] ?} => ( {? out[1] ?} -: {? in[0] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[0] ?} => ( {? out[1] ?} +: {? in[0] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[0] ?} => ( {? out[1] ?} -: {? in[0] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[1] ?} => ( {? out[1] ?} +: {? in[1] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[1] ?} => ( {? out[1] ?} -: {? in[1] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[1] ?} => ( {? out[1] ?} +: {? in[1] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[1] ?} => ( {? out[1] ?} -: {? in[1] ?})) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_COUT , {? in[0] ?} , {? in[1] ?} ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_COUT) ;
  `else
    buf ( {? out[0] ?} , UDP_IN_COUT ) ;
  `endif
  xor  ( UDP_IN_SUM , {? in[1] ?} , {? in[0] ?} ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[1] ?}, UDP_OUT_SUM) ;

  `else
    buf  ( {? out[1] ?} , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine
