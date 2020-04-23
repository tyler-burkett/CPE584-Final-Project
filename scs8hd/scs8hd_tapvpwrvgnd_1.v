


`celldefine
`timescale 1ns / 1ps



module scs8hd_tapvpwrvgnd_1  (

`ifdef SC_USE_PG_PIN
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


endmodule
`endcelldefine