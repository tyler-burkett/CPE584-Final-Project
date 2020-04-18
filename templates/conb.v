{#
	DESCRIPTION
		Constant generator
	PARAMETER MAPPING
		out[0]	:	HI
		out[1]	:	LO
-#}


{? header ?}


`celldefine
// This is the vcc and vss cell.
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},
output {? out[1] ?}

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
   pullup (UDP_IN_HI);
   {? lib ?}_pg_U_VPWR ({? out[0] ?}, UDP_IN_HI, {? vpwr[0] ?});
   pulldown (UDP_IN_LO);
   {? lib ?}_pg_U_VGND ({? out[1] ?}, UDP_IN_LO, {? vgnd[0] ?});
`else
  pullup ({? out[0] ?});
  pulldown ({? out[1] ?});
`endif

endmodule
`endcelldefine
