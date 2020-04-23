// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
module scs8hd_diode_2 (

input DIODE

`ifdef SC_USE_PG_PIN
, input vpwr
, input vgnd
, input vpb
, input vnb
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

endmodule
`endcelldefine