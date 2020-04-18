{#
	DESCRIPTION
		Antenna diode
	PARAMETER MAPPING
		in[0]	:	DIODE
-#}


{? header ?}


`celldefine
module {? lib ?}_{? name ?}_{? drive ?} (

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

endmodule
`endcelldefine
