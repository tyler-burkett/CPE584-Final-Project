{#
	DESCRIPTION
		De-coupling capacitor
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps



module {? lib ?}_{? name ?}_{? drive ?}  (

`ifdef SC_USE_PG_PIN
input {? vpwr[0] ?},
input {? vgnd[0] ?},
input {? vpb[0] ?},
input {? vnb[0] ?}
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


endmodule
`endcelldefine
