{#
	DESCRIPTION
		
	PARAMETER MAPPING
		out[0]	:	LO
-#}


{? header ?}


`celldefine
 `timescale 1ns / 1ps

module {? lib ?}_{? name ?}_{? drive ?} (
output {? out[0] ?}
`ifdef SC_USE_PG_PIN
, input {? vgnd[0] ?}
, input {? vnb[0] ?}
, input {? vpb[0] ?}
, input {? vpwr[0] ?}
`endif
);

specify 
    specparam CDS_LIBNAME  = "{? lib ?}_macro";
    specparam CDS_CELLNAME = "{? lib ?}_macro_sparecell";
    specparam CDS_VIEWNAME = "schematic";
endspecify

`ifdef SC_USE_PG_PIN
{? lib ?}_inv_2 I7 ( .A(nor2left), .Y(invleft), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
{? lib ?}_inv_2 I6 ( .A(nor2right), .Y(invright), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
{? lib ?}_nor2_2 I5 ( .B(nd2left), .A(nd2left), .Y(nor2left), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
{? lib ?}_nor2_2 I4 ( .B(nd2right), .A(nd2right), .Y(nor2right), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
{? lib ?}_nand2_2 I2 ( .B(tielo), .A(tielo), .Y(nd2right), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
{? lib ?}_nand2_2 I3 ( .B(tielo), .A(tielo), .Y(nd2left), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
{? lib ?}_conb_1 I1 ( .{? out[0] ?}(tielo), .HI(net7), .{? vpwr[0] ?}(vpwr), .{? vgnd[0] ?}(vgnd), .{? vnb[0] ?}(vnb), .{? vpb[0] ?}(vpb));
`else
{? lib ?}_inv_2 I7 ( .A(nor2left), .Y(invleft));
{? lib ?}_inv_2 I6 ( .A(nor2right), .Y(invright));
{? lib ?}_nor2_2 I5 ( .B(nd2left), .A(nd2left), .Y(nor2left));
{? lib ?}_nor2_2 I4 ( .B(nd2right), .A(nd2right), .Y(nor2right));
{? lib ?}_nand2_2 I2 ( .B(tielo), .A(tielo), .Y(nd2right));
{? lib ?}_nand2_2 I3 ( .B(tielo), .A(tielo), .Y(nd2left));
{? lib ?}_conb_1 I1 ( .{? out[0] ?}(tielo), .HI(net7));
`endif

buf ({? out[0] ?}, tielo);

endmodule
`endcelldefine
