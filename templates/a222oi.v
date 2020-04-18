{#
	DESCRIPTION
		Three 2-input ands into 3-input nor
	PARAMETER MAPPING
		in[0]	:	A1
		in[1]	:	A2
		in[2]	:	B1
		in[3]	:	B2
		in[4]	:	C1
		in[5]	:	C2
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
input {? in[4] ?},
input {? in[5] ?}


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

  wire csi_opt_298;
  wire csi_opt_296;
  wire csi_opt_297;

// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
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
		({? in[5] ?} +=> {? out[0] ?}) =  (0:0:0,0:0:0);
		({? in[5] ?} -=> {? out[0] ?}) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_298 , {? in[1] ?} , {? in[0] ?} ) ;
  nand ( csi_opt_296 , {? in[3] ?} , {? in[2] ?} ) ;
  nand ( csi_opt_297 , {? in[5] ?} , {? in[4] ?} ) ;

  and  ( UDP_IN_Y , csi_opt_298 , csi_opt_296, csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  {? lib ?}_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, {? vpwr[0] ?}, {? vgnd[0] ?}) ; 
  buf  ({? out[0] ?}, UDP_OUT_Y) ;   
  `else
    buf ( {? out[0] ?} , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine
