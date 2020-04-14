{?heasder?}

`celldefine
// This is the vcc and vss cell.
`timescale {?timescale?}


module {?lib?}_conb_{?drive?}  (
output {?in0?},
output {?in1?}

`ifdef SC_USE_PG_PIN
, input {?vpwr0?}
, input {?vgnd0?}
, input {?vpb0?}
, input {?vnb0?}
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 {?vpwr0?};
supply0 {?vgnd0?};
supply1 {?vpb0?};
supply0 {?vnb0?};
`endif
`endif

`ifdef SC_USE_PG_PIN
   pullup (UDP_IN_HI);
   {?lib?}_pg_U_VPWR ({?in0?}, UDP_IN_HI, {?vpwr0?});
   pulldown (UDP_IN_LO);
   {?lib?}_pg_U_VGND ({?in1?}, UDP_IN_LO, {?vgnd0?});
`else
  pullup ({?in0?});
  pulldown ({?in1?});
`endif

endmodule
`endcelldefine
