// Automatically edited by removePhraseFromMultipleFiles.pl
// iptguser	Wed Aug 31 15:45:58 EDT 2011
// `suppress_faults;`enable_portfaults\n
// `ifdef TETRAMAX;`endif\n
// `ifdef functional;`timescale
// `ifndef dont_change_delay_mode;`endif\n
// `ifndef dont_change_delay_mode;`else\n
// `ifndef dont_change_delay_mode;`endif\n
// `endif;\n
// `disable_portfaults;`nosuppress_faults

// Automatically modified by replacePGwithIfDef.pl
// iptguser	Thu Aug 25 14:47:57 EDT 2011

`celldefine


`timescale 1ns / 1ps

module scs8hd_lpflow_bleeder_1  (

input short

`ifdef SC_USE_PG_PIN
, inout vpwr
, input vgnd
, input vpb
, input vnb
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
wire    vpwr;
supply0 vgnd;
supply1 vpb;
supply0 vnb;
`endif
`endif

  wire gnd;


    pulldown(gnd);
`ifdef SC_USE_PG_PIN
    scs8hd_lpflow_pg_U_VGND (UDP_OUT_short, short, vgnd);
    bufif1 (supply1, supply0) (vpwr, gnd, UDP_OUT_short);
`else
    bufif1 (supply1, supply0) (vpwr, gnd, short);
`endif

`ifdef functional
`else
  `ifdef SC_USE_PG_PIN
	specify
		(short => vpwr) = (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);
	endspecify
  `endif
`endif

endmodule
`endcelldefine
