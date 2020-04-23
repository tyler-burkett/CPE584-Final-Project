


`celldefine
// This is the vcc and vss cell.
`timescale 1ns / 1ps


module scs8hd_conb_1  (
output HI,
output LO

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

`ifdef SC_USE_PG_PIN
   pullup (UDP_IN_HI);
   scs8hd_pg_U_VPWR (HI, UDP_IN_HI, vpwr);
   pulldown (UDP_IN_LO);
   scs8hd_pg_U_VGND (LO, UDP_IN_LO, vgnd);
`else
  pullup (HI);
  pulldown (LO);
`endif

endmodule
`endcelldefine