{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	A
		in[1]	:	B
		in[2]	:	CI
		out[0]	:	COUTN
		out[1]	:	SUM
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},
output {? out[1] ?},
input {? in[0] ?},
input {? in[1] ?},
input {? in[2] ?}

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
		({? in[2] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[2] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
		(posedge {? in[0] ?} => ( {? out[1] ?} +: {? in[0] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[0] ?} => ( {? out[1] ?} -: {? in[0] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[0] ?} => ( {? out[1] ?} +: {? in[0] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[0] ?} => ( {? out[1] ?} -: {? in[0] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[1] ?} => ( {? out[1] ?} +: {? in[1] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[1] ?} => ( {? out[1] ?} -: {? in[1] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[1] ?} => ( {? out[1] ?} +: {? in[1] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[1] ?} => ( {? out[1] ?} -: {? in[1] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[2] ?} => ( {? out[1] ?} +: {? in[2] ?})) =  (0:0:0,0:0:0);
		(posedge {? in[2] ?} => ( {? out[1] ?} -: {? in[2] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[2] ?} => ( {? out[1] ?} +: {? in[2] ?})) =  (0:0:0,0:0:0);
		(negedge {? in[2] ?} => ( {? out[1] ?} -: {? in[2] ?})) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor (UDP_IN_SUM,{? in[0] ?},{? in[1] ?},{? in[2] ?});
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[1] ?}, UDP_OUT_SUM) ;
  
  `else
    buf ( {? out[1] ?} , UDP_IN_SUM ) ;
  `endif
  nor ({? in[0] ?}${? in[1] ?},{? in[0] ?},{? in[1] ?}),({? in[0] ?}${? in[2] ?},{? in[0] ?},{? in[2] ?}),({? in[1] ?}${? in[2] ?},{? in[1] ?},{? in[2] ?});
  or (UDP_IN_COUTN,{? in[0] ?}${? in[1] ?},{? in[0] ?}${? in[2] ?},{? in[1] ?}${? in[2] ?});
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_COUTN, UDP_IN_COUTN, {? vpwr[0] ?}, {? vgnd[0] ?}) ;
  buf  ({? out[0] ?}, UDP_OUT_COUTN) ;


  `else
    buf  ( {? out[0] ?} , UDP_IN_COUTN ) ;
  `endif
endmodule
`endcelldefine
