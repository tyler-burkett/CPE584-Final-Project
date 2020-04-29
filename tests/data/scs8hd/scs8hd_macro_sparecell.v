// Library - scs8hd_macro, Cell - scs8hd_macro_sparecell, View - schematic
// LAST TIME SAVED: May  1 21:27:21 2008
// NETLIST TIME: May  1 21:27:30 2008
`celldefine
 `timescale 1ns / 1ps

module scs8hd_macro_sparecell (
output LO
`ifdef SC_USE_PG_PIN
, input vgnd
, input vnb
, input vpb
, input vpwr
`endif
);

specify 
    specparam CDS_LIBNAME  = "scs8hd_macro";
    specparam CDS_CELLNAME = "scs8hd_macro_sparecell";
    specparam CDS_VIEWNAME = "schematic";
endspecify

`ifdef SC_USE_PG_PIN
scs8hd_inv_2 I7 ( .A(nor2left), .Y(invleft), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
scs8hd_inv_2 I6 ( .A(nor2right), .Y(invright), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
scs8hd_nor2_2 I5 ( .B(nd2left), .A(nd2left), .Y(nor2left), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
scs8hd_nor2_2 I4 ( .B(nd2right), .A(nd2right), .Y(nor2right), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
scs8hd_nand2_2 I2 ( .B(tielo), .A(tielo), .Y(nd2right), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
scs8hd_nand2_2 I3 ( .B(tielo), .A(tielo), .Y(nd2left), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
scs8hd_conb_1 I1 ( .LO(tielo), .HI(net7), .vpwr(vpwr), .vgnd(vgnd), .vnb(vnb), .vpb(vpb));
`else
scs8hd_inv_2 I7 ( .A(nor2left), .Y(invleft));
scs8hd_inv_2 I6 ( .A(nor2right), .Y(invright));
scs8hd_nor2_2 I5 ( .B(nd2left), .A(nd2left), .Y(nor2left));
scs8hd_nor2_2 I4 ( .B(nd2right), .A(nd2right), .Y(nor2right));
scs8hd_nand2_2 I2 ( .B(tielo), .A(tielo), .Y(nd2right));
scs8hd_nand2_2 I3 ( .B(tielo), .A(tielo), .Y(nd2left));
scs8hd_conb_1 I1 ( .LO(tielo), .HI(net7));
`endif

buf (LO, tielo);

endmodule
`endcelldefine
