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
// iptguser	Thu Aug 25 14:47:58 EDT 2011

`celldefine


`timescale 1ns / 1ps

module scs8hd_lpflow_decapkapwr_12  (


`ifdef SC_USE_PG_PIN
input vpwr,
input kapwr,
input vgnd
, input vpb
, input vnb
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 vpwr;
supply1 kapwr;
supply0 vgnd;
supply1 vpb;
supply0 vnb;
`endif
`endif


endmodule
`endcelldefine
