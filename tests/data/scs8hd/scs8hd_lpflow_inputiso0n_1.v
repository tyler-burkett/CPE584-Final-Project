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

// manually edited to fix script issue with "input" cells

`celldefine


`timescale 1ns / 1ps
module scs8hd_lpflow_inputiso0n_1  (

output X,
input A,
input sleepb

`ifdef SC_USE_PG_PIN
,
input vpwr,
input vgnd,
input vpb,
input vnb
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 vpwr;
supply0 vgnd;
supply1 vpb;
supply0 vnb;
`endif
`endif


`ifdef functional
`else
	specify
    (A +=> X) = (0:0:0,0:0:0);
    (sleepb +=> X) = (0:0:0,0:0:0);
	endspecify
`endif
  `ifdef SC_USE_PG_PIN


  and ( UDP_IN_X , A , sleepb );
  scs8hd_lpflow_pg_U_VPWR_VGND  (X, UDP_IN_X, vpwr, vgnd) ;

 
`else
    and ( X , A , sleepb ) ;
  `endif
endmodule
`endcelldefine
  
