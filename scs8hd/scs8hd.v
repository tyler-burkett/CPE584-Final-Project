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
`timescale 1ns / 1ps


module scs8hd_a2bb2o_1  (
output X,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> X) =  (0:0:0,0:0:0);
		(A1N -=> X) =  (0:0:0,0:0:0);
		(A2N +=> X) =  (0:0:0,0:0:0);
		(A2N -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1N , A2N ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2bb2o_2  (
output X,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> X) =  (0:0:0,0:0:0);
		(A1N -=> X) =  (0:0:0,0:0:0);
		(A2N +=> X) =  (0:0:0,0:0:0);
		(A2N -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1N , A2N ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2bb2o_4  (
output X,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> X) =  (0:0:0,0:0:0);
		(A1N -=> X) =  (0:0:0,0:0:0);
		(A2N +=> X) =  (0:0:0,0:0:0);
		(A2N -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1N , A2N ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2bb2oi_1  (
output Y,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> Y) =   (0:0:0,0:0:0);
		(A1N -=> Y) =   (0:0:0,0:0:0);
		(A2N +=> Y) =   (0:0:0,0:0:0);
		(A2N -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1N , A2N ) ;
  nor  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2bb2oi_2  (
output Y,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> Y) =   (0:0:0,0:0:0);
		(A1N -=> Y) =   (0:0:0,0:0:0);
		(A2N +=> Y) =   (0:0:0,0:0:0);
		(A2N -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1N , A2N ) ;
  nor  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2bb2oi_4  (
output Y,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> Y) =   (0:0:0,0:0:0);
		(A1N -=> Y) =   (0:0:0,0:0:0);
		(A2N +=> Y) =   (0:0:0,0:0:0);
		(A2N -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1N , A2N ) ;
  nor  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21bo_1  (
output X,

input A1,
input A2,
input B1N

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


  wire csi_opt_289;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1N +=> X) =  (0:0:0,0:0:0);
		(B1N -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_289 , A2 , A1 ) ;
  nand  ( UDP_IN_X , B1N , csi_opt_289 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21bo_2  (
output X,

input A1,
input A2,
input B1N

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


  wire csi_opt_289;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1N +=> X) =  (0:0:0,0:0:0);
		(B1N -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_289 , A2 , A1 ) ;
  nand  ( UDP_IN_X , B1N , csi_opt_289 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21bo_4  (
output X,

input A1,
input A2,
input B1N

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


  wire csi_opt_289;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1N +=> X) =  (0:0:0,0:0:0);
		(B1N -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_289 , A2 , A1 ) ;
  nand  ( UDP_IN_X , B1N , csi_opt_289 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21boi_0  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   not (b,B1N);
   and ( csi_opt_273 , A1 , A2 ) ;
   nor  ( UDP_IN_Y , b , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
// modification by B1NB, based on SPR13943.  need to have
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1N +=> Y) =   (0:0:0,0:0:0);
		(B1N -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif
   
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21boi_1  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   not (b,B1N);
   and ( csi_opt_273 , A1 , A2 ) ;
   nor  ( UDP_IN_Y , b , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
// modification by B1NB, based on SPR13943.  need to have
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1N +=> Y) =   (0:0:0,0:0:0);
		(B1N -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif
   
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21boi_2  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   not (b,B1N);
   and ( csi_opt_273 , A1 , A2 ) ;
   nor  ( UDP_IN_Y , b , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
// modification by B1NB, based on SPR13943.  need to have
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1N +=> Y) =   (0:0:0,0:0:0);
		(B1N -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif
   
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21boi_4  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   not (b,B1N);
   and ( csi_opt_273 , A1 , A2 ) ;
   nor  ( UDP_IN_Y , b , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
// modification by B1NB, based on SPR13943.  need to have
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1N +=> Y) =   (0:0:0,0:0:0);
		(B1N -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif
   
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21o_1  (
output X,

input A1,
input A2,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21o_2  (
output X,

input A1,
input A2,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21o_4  (
output X,

input A1,
input A2,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21oi_1  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21oi_2  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a21oi_4  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a22o_1  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  and ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a22o_2  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  and ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a22o_4  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  and ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a22oi_1  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_298;
  wire csi_opt_296;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_298 , A2 , A1 ) ;
  nand ( csi_opt_296 , B2 , B1 ) ;
  and  ( UDP_IN_Y , csi_opt_298 , csi_opt_296 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a22oi_2  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_298;
  wire csi_opt_296;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_298 , A2 , A1 ) ;
  nand ( csi_opt_296 , B2 , B1 ) ;
  and  ( UDP_IN_Y , csi_opt_298 , csi_opt_296 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a22oi_4  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_298;
  wire csi_opt_296;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_298 , A2 , A1 ) ;
  nand ( csi_opt_296 , B2 , B1 ) ;
  and  ( UDP_IN_Y , csi_opt_298 , csi_opt_296 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a31o_1  (
output X,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a31o_2  (
output X,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a31o_4  (
output X,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a31oi_1  (
output Y,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a31oi_2  (
output Y,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a31oi_4  (
output Y,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a32o_1  (
output X,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  and ( csi_opt_274 , B1 , B2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a32o_2  (
output X,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  and ( csi_opt_274 , B1 , B2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a32o_4  (
output X,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  and ( csi_opt_274 , B1 , B2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a32oi_1  (
output Y,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_304;
  wire csi_opt_302;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_304 , A2 , A1 , A3 ) ;
  nand ( csi_opt_302 , B2 , B1 ) ;
  and  ( UDP_IN_Y , csi_opt_304 , csi_opt_302 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a32oi_2  (
output Y,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_304;
  wire csi_opt_302;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_304 , A2 , A1 , A3 ) ;
  nand ( csi_opt_302 , B2 , B1 ) ;
  and  ( UDP_IN_Y , csi_opt_304 , csi_opt_302 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a32oi_4  (
output Y,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_304;
  wire csi_opt_302;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_304 , A2 , A1 , A3 ) ;
  nand ( csi_opt_302 , B2 , B1 ) ;
  and  ( UDP_IN_Y , csi_opt_304 , csi_opt_302 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a41o_1  (
output X,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(A4 +=> X) =  (0:0:0,0:0:0);
		(A4 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 , A3 , A4 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a41o_2  (
output X,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(A4 +=> X) =  (0:0:0,0:0:0);
		(A4 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 , A3 , A4 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a41o_4  (
output X,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(A4 +=> X) =  (0:0:0,0:0:0);
		(A4 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 , A3 , A4 ) ;
  or  ( UDP_IN_X , csi_opt_273 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a41oi_1  (
output Y,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(A4 +=> Y) =  (0:0:0,0:0:0);
		(A4 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 , A3 , A4 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a41oi_2  (
output Y,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(A4 +=> Y) =  (0:0:0,0:0:0);
		(A4 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 , A3 , A4 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a41oi_4  (
output Y,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(A4 +=> Y) =  (0:0:0,0:0:0);
		(A4 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 , A3 , A4 ) ;
  nor  ( UDP_IN_Y , B1 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a211o_1  (
output X,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , C1 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a211o_2  (
output X,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , C1 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a211o_4  (
output X,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , C1 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a211oi_1  (
output Y,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_274 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a211oi_2  (
output Y,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_274 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a211oi_4  (
output Y,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_274 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a221o_1  (
output X,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  and ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a221o_2  (
output X,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  and ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a221o_4  (
output X,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , B1 , B2 ) ;
  and ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_274 , csi_opt_273 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a221oi_1  (
output Y,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_275;
  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_275 , B1 , B2 ) ;
  and ( csi_opt_276 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_275 , C1 , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a221oi_2  (
output Y,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_275;
  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_275 , B1 , B2 ) ;
  and ( csi_opt_276 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_275 , C1 , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a221oi_4  (
output Y,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_275;
  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_275 , B1 , B2 ) ;
  and ( csi_opt_276 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_275 , C1 , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a222oi_1  (
output Y,
input A1,
input A2,
input B1,
input B2,
input C1,
input C2


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

  wire csi_opt_298;
  wire csi_opt_296;
  wire csi_opt_297;

// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(C2 +=> Y) =  (0:0:0,0:0:0);
		(C2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_298 , A2 , A1 ) ;
  nand ( csi_opt_296 , B2 , B1 ) ;
  nand ( csi_opt_297 , C2 , C1 ) ;

  and  ( UDP_IN_Y , csi_opt_298 , csi_opt_296, csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ; 
  buf  (Y, UDP_OUT_Y) ;   
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a311o_1  (
output X,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , C1 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a311o_2  (
output X,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , C1 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a311o_4  (
output X,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A3 , A1 , A2 ) ;
  or  ( UDP_IN_X , csi_opt_273 , C1 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a311oi_1  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_275;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_275 , A3 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_275 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a311oi_2  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_275;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_275 , A3 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_275 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a311oi_4  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_275;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_275 , A3 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , csi_opt_275 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111o_1  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , C1 , B1 , csi_opt_273 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111o_2  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , C1 , B1 , csi_opt_273 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111o_4  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_273 , A1 , A2 ) ;
  or  ( UDP_IN_X , C1 , B1 , csi_opt_273 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_0  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_1  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_2  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_4  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_0  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_1  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_2  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_a2111oi_4  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  and ( csi_opt_274 , A1 , A2 ) ;
  nor  ( UDP_IN_Y , B1 , C1 , D1 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2_0  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2_1  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2_2  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2_4  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2b_1  (
output X,

input AN,
input B

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , AN ) ;
  and  ( UDP_IN_X , csi_opt_276 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2b_2  (
output X,

input AN,
input B

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , AN ) ;
  and  ( UDP_IN_X , csi_opt_276 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and2b_4  (
output X,

input AN,
input B

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , AN ) ;
  and  ( UDP_IN_X , csi_opt_276 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3_1  (
output X,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , C , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3_2  (
output X,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , C , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3_4  (
output X,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , C , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3b_1  (
output X,

input AN,
input B,
input C

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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , AN ) ;
  and  ( UDP_IN_X , C , csi_opt_280 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3b_2  (
output X,

input AN,
input B,
input C

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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , AN ) ;
  and  ( UDP_IN_X , C , csi_opt_280 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and3b_4  (
output X,

input AN,
input B,
input C

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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , AN ) ;
  and  ( UDP_IN_X , C , csi_opt_280 , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4_1  (
output X,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4_2  (
output X,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4_4  (
output X,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_X , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4b_1  (
output X,

input AN,
input B,
input C,
input D

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


  wire csi_opt_284;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
		(D +=> X) =   (0:0:0,0:0:0);
		(D -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_284 , AN ) ;
  and  ( UDP_IN_X , csi_opt_284 , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4b_2  (
output X,

input AN,
input B,
input C,
input D

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


  wire csi_opt_284;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
		(D +=> X) =   (0:0:0,0:0:0);
		(D -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_284 , AN ) ;
  and  ( UDP_IN_X , csi_opt_284 , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4b_4  (
output X,

input AN,
input B,
input C,
input D

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


  wire csi_opt_284;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =   (0:0:0,0:0:0);
		(AN -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
		(D +=> X) =   (0:0:0,0:0:0);
		(D -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_284 , AN ) ;
  and  ( UDP_IN_X , csi_opt_284 , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4bb_1  (
output X,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =    (0:0:0,0:0:0);
		(AN -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
		(C +=> X) =    (0:0:0,0:0:0);
		(C -=> X) =    (0:0:0,0:0:0);
		(D +=> X) =    (0:0:0,0:0:0);
		(D -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , AN , BN ) ;
  and  ( UDP_IN_X , csi_opt_278 , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4bb_2  (
output X,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =    (0:0:0,0:0:0);
		(AN -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
		(C +=> X) =    (0:0:0,0:0:0);
		(C -=> X) =    (0:0:0,0:0:0);
		(D +=> X) =    (0:0:0,0:0:0);
		(D -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , AN , BN ) ;
  and  ( UDP_IN_X , csi_opt_278 , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_and4bb_4  (
output X,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> X) =    (0:0:0,0:0:0);
		(AN -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
		(C +=> X) =    (0:0:0,0:0:0);
		(C -=> X) =    (0:0:0,0:0:0);
		(D +=> X) =    (0:0:0,0:0:0);
		(D -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , AN , BN ) ;
  and  ( UDP_IN_X , csi_opt_278 , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_2  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_4  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_6  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_8  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_12  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_buf_16  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_bufbuf_8  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_bufbuf_16  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_bufinv_8  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_bufinv_16  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkbuf_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkbuf_2  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkbuf_4  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkbuf_8  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkbuf_16  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s15_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s15_2  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s18_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s18_2  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s25_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s25_2  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s50_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkdlybuf4s50_2  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinv_1  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinv_2  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinv_4  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinv_8  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinv_16  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinvlp_2  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_clkinvlp_4  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_decap_3  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_decap_4  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_decap_6  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_decap_8  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_decap_12  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


// manually edit to fix tmax warnings-jfe

`celldefine
`timescale 1ns / 1ps



module scs8hd_dfbbn_1  (
output Q,
output QN,
input D,
input CLKN,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire clk;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    not ( clk , CLKN ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , clk , D ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , clk , D ) ;
    `endif 
`else
  wire CLKN_delayed;
  wire RESETB_delayed;
  wire SETB_delayed;
    reg notifier ; 
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    not ( clk , CLKN_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , clk , D_delayed , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( negedge CLKN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( negedge CLKN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLKN_delayed ) ; 
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLKN_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLKN_delayed , D_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ;
                                                          
		$width ( negedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


// manually edit to fix tmax warnings-jfe

`celldefine
`timescale 1ns / 1ps



module scs8hd_dfbbn_2  (
output Q,
output QN,
input D,
input CLKN,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire clk;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    not ( clk , CLKN ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , clk , D ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , clk , D ) ;
    `endif 
`else
  wire CLKN_delayed;
  wire RESETB_delayed;
  wire SETB_delayed;
    reg notifier ; 
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    not ( clk , CLKN_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , clk , D_delayed , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( negedge CLKN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( negedge CLKN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLKN_delayed ) ; 
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLKN_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLKN_delayed , D_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ;
                                                          
		$width ( negedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfbbp_1  (
output Q,
output QN,
input D,
input CLK,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , CLK , D ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , CLK , D ) ;
    `endif 
`else
  wire CLK_delayed;
  wire RESETB_delayed;
  wire SETB_delayed;
    reg notifier ; 
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , CLK_delayed , D_delayed , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( posedge CLK => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( posedge CLK => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLK_delayed ) ; 
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLK_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLK_delayed , D_delayed ) ; 


    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , SETB_delayed  ) ;

		$width ( negedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfrbp_1  (
output Q,
output QN,

input CLK,
input D,
input RESETB

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


  wire buf_Q;
  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfrbp_2  (
output Q,
output QN,

input CLK,
input D,
input RESETB

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


  wire buf_Q;
  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfrtn_1  (
output Q,

input CLKN,
input D,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire intclk;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intclk , CLKN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , intclk , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , intclk , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLKN_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intclk , CLKN_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , intclk , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge CLKN => ( Q : CLKN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLKN_delayed ) ; 
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLKN_delayed , D_delayed ) ; 
    
    $width ( posedge CLKN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLKN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfrtp_1  (
output Q,

input CLK,
input D,
input RESETB

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


  wire buf_Q;
  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfrtp_2  (
output Q,

input CLK,
input D,
input RESETB

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


  wire buf_Q;
  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfrtp_4  (
output Q,

input CLK,
input D,
input RESETB

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


  wire buf_Q;
  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , D , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , D , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , D_delayed , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfsbp_1  (
output Q,
output QN,

input CLK,
input D,
input SETB

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


  wire buf_Q;
  wire set;

`ifdef functional
  not ( set , SETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , D , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , D , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( SETB === 1'b1 ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge SETB => ( QN +: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfsbp_2  (
output Q,
output QN,

input CLK,
input D,
input SETB

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


  wire buf_Q;
  wire set;

`ifdef functional
  not ( set , SETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , D , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , D , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( SETB === 1'b1 ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge SETB => ( QN +: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfstp_1  (
output Q,

input CLK,
input D,
input SETB

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


  wire buf_Q;
  wire set;

`ifdef functional
  not ( set , SETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , D , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , D , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( SETB === 1'b1 ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfstp_2  (
output Q,

input CLK,
input D,
input SETB

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


  wire buf_Q;
  wire set;

`ifdef functional
  not ( set , SETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , D , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , D , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( SETB === 1'b1 ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfstp_4  (
output Q,

input CLK,
input D,
input SETB

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


  wire buf_Q;
  wire set;

`ifdef functional
  not ( set , SETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , D , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , D , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( SETB === 1'b1 ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfxbp_1  (
output Q,
output QN,

input CLK,
input D

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


  wire buf_Q;

`ifdef functional

  `ifdef SC_USE_PG_PIN

   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , D , CLK ,  , vpwr , vgnd ) ;

  `else

   scs8hd_pg_U_DF_P #0.001 ( buf_Q , D , CLK ) ;

  `endif 

`else

  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 

  specify

    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 

  endspecify

`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfxbp_2  (
output Q,
output QN,

input CLK,
input D

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


  wire buf_Q;

`ifdef functional

  `ifdef SC_USE_PG_PIN

   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , D , CLK ,  , vpwr , vgnd ) ;

  `else

   scs8hd_pg_U_DF_P #0.001 ( buf_Q , D , CLK ) ;

  `endif 

`else

  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 

  specify

    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 

  endspecify

`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfxtp_1  (
output Q,

input CLK,
input D

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


  wire buf_Q;

`ifdef functional
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , D , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , D , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfxtp_2  (
output Q,

input CLK,
input D

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


  wire buf_Q;

`ifdef functional
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , D , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , D , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfxtp_4  (
output Q,

input CLK,
input D

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


  wire buf_Q;

`ifdef functional
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , D , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , D , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


// manual edit to fix TMAX warnings-jfe

`celldefine
`timescale 1ns / 1ps


module scs8hd_dlclkp_1  (
output GCLK,

input GATE,
input CLK

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

  wire m0;
  wire clkn;

`ifdef functional
  not ( clkn , CLK ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( m0 , GATE , clkn ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( m0 , GATE , clkn ) ;
`endif 
  and ( GCLK , m0 , CLK ) ; 

`else
  wire CLK_delayed;
  wire GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( m0 , GATE_delayed , clkn , notifier , vpwr , vgnd ) ; 
  and ( GCLK , m0 , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( CLK +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
  endspecify
`endif


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


// manual edit to fix TMAX warnings-jfe

`celldefine
`timescale 1ns / 1ps


module scs8hd_dlclkp_2  (
output GCLK,

input GATE,
input CLK

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

  wire m0;
  wire clkn;

`ifdef functional
  not ( clkn , CLK ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( m0 , GATE , clkn ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( m0 , GATE , clkn ) ;
`endif 
  and ( GCLK , m0 , CLK ) ; 

`else
  wire CLK_delayed;
  wire GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( m0 , GATE_delayed , clkn , notifier , vpwr , vgnd ) ; 
  and ( GCLK , m0 , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( CLK +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
  endspecify
`endif


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


// manual edit to fix TMAX warnings-jfe

`celldefine
`timescale 1ns / 1ps


module scs8hd_dlclkp_4  (
output GCLK,

input GATE,
input CLK

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

  wire m0;
  wire clkn;

`ifdef functional
  not ( clkn , CLK ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( m0 , GATE , clkn ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( m0 , GATE , clkn ) ;
`endif 
  and ( GCLK , m0 , CLK ) ; 

`else
  wire CLK_delayed;
  wire GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( m0 , GATE_delayed , clkn , notifier , vpwr , vgnd ) ; 
  and ( GCLK , m0 , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( CLK +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
  endspecify
`endif


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrbn_1  (
output Q,
output QN,

input RESETB,
input D,
input GATEN

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


  wire reset;
  wire intgate;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intgate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , intgate , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( Q : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    ( negedge RESETB => ( QN -: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( QN : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
     
    $recrem ( posedge RESETB , posedge GATEN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge GATEN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrbn_2  (
output Q,
output QN,

input RESETB,
input D,
input GATEN

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


  wire reset;
  wire intgate;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intgate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , intgate , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( Q : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    ( negedge RESETB => ( QN -: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( QN : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
     
    $recrem ( posedge RESETB , posedge GATEN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge GATEN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrbp_1  (
output Q,
output QN,

input RESETB,
input D,
input GATE

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


  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , GATE , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , GATE , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATE_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , GATE_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge GATE => ( Q : GATE ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    ( negedge RESETB => ( QN -: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge GATE => ( QN : GATE ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
     
    $recrem ( posedge RESETB , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATE_delayed ) ; 
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $width ( posedge GATE &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrbp_2  (
output Q,
output QN,

input RESETB,
input D,
input GATE

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


  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , GATE , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , GATE , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATE_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , GATE_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge GATE => ( Q : GATE ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    ( negedge RESETB => ( QN -: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge GATE => ( QN : GATE ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
     
    $recrem ( posedge RESETB , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATE_delayed ) ; 
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $width ( posedge GATE &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrtn_1  (
output Q,

input RESETB,
input D,
input GATEN

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


  wire reset;
  wire intgate;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intgate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , intgate , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( Q : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $recrem ( posedge RESETB , posedge GATEN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge GATEN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrtn_2  (
output Q,

input RESETB,
input D,
input GATEN

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


  wire reset;
  wire intgate;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intgate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , intgate , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( Q : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $recrem ( posedge RESETB , posedge GATEN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge GATEN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrtn_4  (
output Q,

input RESETB,
input D,
input GATEN

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


  wire reset;
  wire intgate;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intgate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , intgate , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge GATEN => ( Q : GATEN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $recrem ( posedge RESETB , posedge GATEN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge GATEN &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrtp_1  (
output Q,

input RESETB,
input D,
input GATE

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


  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , GATE , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , GATE , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATE_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , GATE_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge GATE => ( Q : GATE ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $recrem ( posedge RESETB , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATE_delayed ) ; 
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $width ( posedge GATE &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlrtp_2  (
output Q,

input RESETB,
input D,
input GATE

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


  wire reset;

`ifdef functional
  not ( reset , RESETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , D , GATE , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P_R #0.001 ( buf_Q , D , GATE , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATE_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
scs8hd_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , GATE_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( posedge GATE => ( Q : GATE ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $recrem ( posedge RESETB , negedge GATE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATE_delayed ) ; 
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATE_delayed , D_delayed ) ; 
    $width ( posedge GATE &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxbn_1  (
output Q,
output QN,

input D,
input GATEN

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



  wire gate;
  wire buf_Q;

`ifdef functional

  not ( gate , GATEN ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DL_P_NO_pg #0.001 ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DL_P #0.001 ( buf_Q , D , gate ) ;
  `endif 

`else
  wire GATEN_delayed;
  wire D_delayed;

  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
  scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1 ) ; 

  specify
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
    ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( negedge GATEN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
    $width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
  endspecify

`endif

  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxbn_2  (
output Q,
output QN,

input D,
input GATEN

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



  wire gate;
  wire buf_Q;

`ifdef functional

  not ( gate , GATEN ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DL_P_NO_pg #0.001 ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DL_P #0.001 ( buf_Q , D , gate ) ;
  `endif 

`else
  wire GATEN_delayed;
  wire D_delayed;

  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
  scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1 ) ; 

  specify
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
    ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( negedge GATEN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
    $width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
  endspecify

`endif

  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxbp_1  (
output Q,
output QN,

input D,
input GATE

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



  wire buf_Q;

`ifdef functional
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg #0.001 ( buf_Q , D , GATE ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P #0.001 ( buf_Q , D , GATE ) ;
`endif 
`else
  wire GATE_delayed;
  wire D_delayed;
  reg notifier ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , GATE_delayed , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( posedge GATE => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
		 ( posedge GATE => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
		$width ( posedge GATE &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxtn_1  (
output Q,

input D,
input GATEN

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



  wire gate;
  wire buf_Q;

`ifdef functional
    not ( gate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( buf_Q , D , gate ) ;
`endif 
`else
  wire GATEN_delayed;
  wire D_delayed;
  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxtn_2  (
output Q,

input D,
input GATEN

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



  wire gate;
  wire buf_Q;

`ifdef functional
    not ( gate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( buf_Q , D , gate ) ;
`endif 
`else
  wire GATEN_delayed;
  wire D_delayed;
  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxtn_4  (
output Q,

input D,
input GATEN

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



  wire gate;
  wire buf_Q;

`ifdef functional
    not ( gate , GATEN ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( buf_Q , D , gate ) ;
`endif 
`else
  wire GATEN_delayed;
  wire D_delayed;
  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxtp_1  (
output Q,

input D,
input GATE

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



  wire buf_Q;

`ifdef functional
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( buf_Q , D , GATE ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( buf_Q , D , GATE ) ;
`endif 
`else
  wire GATE_delayed;
  wire D_delayed;
  reg notifier ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , GATE_delayed , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE= ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( posedge GATE => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( posedge GATE &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlygate4sd1_1  (
output X,
input A


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


// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;


  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlygate4sd1_1  (
output X,
input A


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


// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;


  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlygate4sd1_1  (
output X,
input A


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


// modification by BNB, based on SPR13943.  need to have
// the reg and specify gone when using a functional model.
`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;


  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlymetal6s2s_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlymetal6s4s_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_dlymetal6s6s_1  (
output X,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_ebufn_1  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
bufif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    bufif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_ebufn_2  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
bufif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    bufif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_ebufn_4  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
bufif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    bufif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_ebufn_8  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
bufif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    bufif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_edfxbp_1  (
output Q,
output QN,
input CLK,
input D,
input DE

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


  wire buf_Q;

`ifdef functional
   scs8hd_pg_U_MUX_2_1 ( mux_out , buf_Q , D , DE )  ; 
  `ifdef SC_USE_PG_PIN
    scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ; 
  `else
    scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif
`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , buf_Q , D_delayed , DE_delayed )  ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( DE_delayed === 1'b1 ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_edfxtp_1  (
output Q,
input CLK,
input D,
input DE

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


  wire buf_Q;

`ifdef functional
   scs8hd_pg_U_MUX_2_1 ( mux_out , buf_Q , D , DE )  ; 
  `ifdef SC_USE_PG_PIN
    scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ; 
  `else
    scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif

`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , buf_Q , D_delayed , DE_delayed )  ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( DE_delayed === 1'b1 ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvn_0  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
notif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    notif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvn_1  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
notif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    notif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvn_2  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
notif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    notif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvn_4  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
notif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    notif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvn_8  (
output Z,

input A,
input TEB

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TEB, TEB, vpwr, vgnd) ;
notif0 (Z,UDP_OUT_A,UDP_OUT_TEB);

  `else
    notif0 ( Z , A , TEB ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TEB -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvp_1  (
output Z,

input A,
input TE

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TE, TE, vpwr, vgnd) ;
notif1 (Z,UDP_OUT_A,UDP_OUT_TE);

  `else
    notif1 ( Z , A , TE ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvp_2  (
output Z,

input A,
input TE

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TE, TE, vpwr, vgnd) ;
notif1 (Z,UDP_OUT_A,UDP_OUT_TE);

  `else
    notif1 ( Z , A , TE ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvp_4  (
output Z,

input A,
input TE

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TE, TE, vpwr, vgnd) ;
notif1 (Z,UDP_OUT_A,UDP_OUT_TE);

  `else
    notif1 ( Z , A , TE ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_einvp_8  (
output Z,

input A,
input TE

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


  scs8hd_pg_U_VPWR_VGND (UDP_OUT_A, A, vpwr, vgnd) ;
  scs8hd_pg_U_VPWR_VGND (UDP_OUT_TE, TE, vpwr, vgnd) ;
notif1 (Z,UDP_OUT_A,UDP_OUT_TE);

  `else
    notif1 ( Z , A , TE ) ;
  `endif
`ifdef functional
`else
	specify
		(A +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(A -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE +=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
		(TE -=> Z) =  (0:0:0,0:0:0,0:0:0,0:0:0,0:0:0,0:0:0);  // delays are t01,t10,t0Z,tZ1,t1Z,tZ0
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_fa_1  (
output COUT,
output SUM,

input A,
input B,
input CIN

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


  wire csi_opt_303;
  wire csi_opt_278;
  wire csi_opt_279;
  wire csi_opt_276;
  wire csi_opt_275;
  wire csi_opt_277;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(CIN +=> COUT) =  (0:0:0,0:0:0);
		(CIN -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_303 , CIN , B ) ;
  and ( csi_opt_278 , csi_opt_303 , A ) ;
  and ( csi_opt_279 , B , CIN ) ;
  or  ( UDP_IN_COUT , csi_opt_279 , csi_opt_278 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;
  `else
    buf ( COUT , UDP_IN_COUT ) ;
  `endif
  and ( csi_opt_276 , CIN , A , B ) ;
  nor ( csi_opt_275 , A , csi_opt_303 ) ;
  nor ( csi_opt_277 , csi_opt_275 , COUT ) ;
  or  ( UDP_IN_SUM , csi_opt_277 , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf  ( SUM , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_fa_2  (
output COUT,
output SUM,

input A,
input B,
input CIN

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


  wire csi_opt_303;
  wire csi_opt_278;
  wire csi_opt_279;
  wire csi_opt_276;
  wire csi_opt_275;
  wire csi_opt_277;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(CIN +=> COUT) =  (0:0:0,0:0:0);
		(CIN -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_303 , CIN , B ) ;
  and ( csi_opt_278 , csi_opt_303 , A ) ;
  and ( csi_opt_279 , B , CIN ) ;
  or  ( UDP_IN_COUT , csi_opt_279 , csi_opt_278 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;
  `else
    buf ( COUT , UDP_IN_COUT ) ;
  `endif
  and ( csi_opt_276 , CIN , A , B ) ;
  nor ( csi_opt_275 , A , csi_opt_303 ) ;
  nor ( csi_opt_277 , csi_opt_275 , COUT ) ;
  or  ( UDP_IN_SUM , csi_opt_277 , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf  ( SUM , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_fa_4  (
output COUT,
output SUM,

input A,
input B,
input CIN

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


  wire csi_opt_303;
  wire csi_opt_278;
  wire csi_opt_279;
  wire csi_opt_276;
  wire csi_opt_275;
  wire csi_opt_277;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(CIN +=> COUT) =  (0:0:0,0:0:0);
		(CIN -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_303 , CIN , B ) ;
  and ( csi_opt_278 , csi_opt_303 , A ) ;
  and ( csi_opt_279 , B , CIN ) ;
  or  ( UDP_IN_COUT , csi_opt_279 , csi_opt_278 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;
  `else
    buf ( COUT , UDP_IN_COUT ) ;
  `endif
  and ( csi_opt_276 , CIN , A , B ) ;
  nor ( csi_opt_275 , A , csi_opt_303 ) ;
  nor ( csi_opt_277 , csi_opt_275 , COUT ) ;
  or  ( UDP_IN_SUM , csi_opt_277 , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf  ( SUM , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_fah_1  (
output COUT,
output SUM,
input A,
input B,
input CI

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(CI +=> COUT) =  (0:0:0,0:0:0);
		(CI -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CI => ( SUM +: CI)) =  (0:0:0,0:0:0);
		(posedge CI => ( SUM -: CI)) =  (0:0:0,0:0:0);
		(negedge CI => ( SUM +: CI)) =  (0:0:0,0:0:0);
		(negedge CI => ( SUM -: CI)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor (UDP_IN_SUM,A,B,CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf ( SUM , UDP_IN_SUM ) ;
  `endif
  and (A$B,A,B),(A$CI,A,CI),(B$CI,B,CI);
  or (UDP_IN_COUT,A$B,A$CI,B$CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;


  `else
    buf  ( COUT , UDP_IN_COUT ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_fahcin_1  (
output COUT,
output SUM,
input A,
input B,
input CIN

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(CIN +=> COUT) =  (0:0:0,0:0:0);
		(CIN -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(posedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM +: CIN)) =  (0:0:0,0:0:0);
		(negedge CIN => ( SUM -: CIN)) =  (0:0:0,0:0:0);
	endspecify
`endif

  not(CI,CIN);
  xor (UDP_IN_SUM,A,B,CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf ( SUM , UDP_IN_SUM ) ;
  `endif
  and (A$B,A,B),(A$CI,A,CI),(B$CI,B,CI);
  or (UDP_IN_COUT,A$B,A$CI,B$CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;


  `else
    buf  ( COUT , UDP_IN_COUT ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_fahcon_1  (
output COUTN,
output SUM,
input A,
input B,
input CI

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUTN) =  (0:0:0,0:0:0);
		(A -=> COUTN) =  (0:0:0,0:0:0);
		(B +=> COUTN) =  (0:0:0,0:0:0);
		(B -=> COUTN) =  (0:0:0,0:0:0);
		(CI +=> COUTN) =  (0:0:0,0:0:0);
		(CI -=> COUTN) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(posedge CI => ( SUM +: CI)) =  (0:0:0,0:0:0);
		(posedge CI => ( SUM -: CI)) =  (0:0:0,0:0:0);
		(negedge CI => ( SUM +: CI)) =  (0:0:0,0:0:0);
		(negedge CI => ( SUM -: CI)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor (UDP_IN_SUM,A,B,CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;
  
  `else
    buf ( SUM , UDP_IN_SUM ) ;
  `endif
  nor (A$B,A,B),(A$CI,A,CI),(B$CI,B,CI);
  or (UDP_IN_COUTN,A$B,A$CI,B$CI);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUTN, UDP_IN_COUTN, vpwr, vgnd) ;
  buf  (COUTN, UDP_OUT_COUTN) ;


  `else
    buf  ( COUTN , UDP_IN_COUTN ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_ha_1  (
output COUT,
output SUM,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_COUT , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;
  `else
    buf ( COUT , UDP_IN_COUT ) ;
  `endif
  xor  ( UDP_IN_SUM , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf  ( SUM , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_ha_2  (
output COUT,
output SUM,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_COUT , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;
  `else
    buf ( COUT , UDP_IN_COUT ) ;
  `endif
  xor  ( UDP_IN_SUM , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf  ( SUM , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_ha_4  (
output COUT,
output SUM,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> COUT) =  (0:0:0,0:0:0);
		(A -=> COUT) =  (0:0:0,0:0:0);
		(B +=> COUT) =  (0:0:0,0:0:0);
		(B -=> COUT) =  (0:0:0,0:0:0);
		(posedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( SUM -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( SUM -: B)) =  (0:0:0,0:0:0);
	endspecify
`endif

  and  ( UDP_IN_COUT , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_COUT, UDP_IN_COUT, vpwr, vgnd) ;
  buf  (COUT, UDP_OUT_COUT) ;
  `else
    buf ( COUT , UDP_IN_COUT ) ;
  `endif
  xor  ( UDP_IN_SUM , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_SUM, UDP_IN_SUM, vpwr, vgnd) ;
  buf  (SUM, UDP_OUT_SUM) ;

  `else
    buf  ( SUM , UDP_IN_SUM ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_1  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_2  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_4  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_6  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_8  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_12  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_inv_16  (
output Y,

input A

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A -=> Y ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  not  ( UDP_IN_Y , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_maj3_1  (
output X,

input A,
input B,
input C

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


  wire csi_opt_296;
  wire csi_opt_274;
  wire csi_opt_275;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_296 , B , A ) ;
  and ( csi_opt_274 , csi_opt_296 , C ) ;
  and ( csi_opt_275 , A , B ) ;
  or  ( UDP_IN_X , csi_opt_275 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_maj3_2  (
output X,

input A,
input B,
input C

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


  wire csi_opt_296;
  wire csi_opt_274;
  wire csi_opt_275;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_296 , B , A ) ;
  and ( csi_opt_274 , csi_opt_296 , C ) ;
  and ( csi_opt_275 , A , B ) ;
  or  ( UDP_IN_X , csi_opt_275 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_maj3_4  (
output X,

input A,
input B,
input C

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


  wire csi_opt_296;
  wire csi_opt_274;
  wire csi_opt_275;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_296 , B , A ) ;
  and ( csi_opt_274 , csi_opt_296 , C ) ;
  and ( csi_opt_275 , A , B ) ;
  or  ( UDP_IN_X , csi_opt_275 , csi_opt_274 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2_1  (
output X,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(posedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(posedge S => ( X -: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X -: S)) =  (0:0:0,0:0:0);
	endspecify
`endif

  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1 (UDP_IN_X, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2_2  (
output X,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(posedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(posedge S => ( X -: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X -: S)) =  (0:0:0,0:0:0);
	endspecify
`endif

  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1 (UDP_IN_X, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2_4  (
output X,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(posedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(posedge S => ( X -: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X -: S)) =  (0:0:0,0:0:0);
	endspecify
`endif

  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1 (UDP_IN_X, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2_8  (
output X,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(posedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(posedge S => ( X -: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X +: S)) =  (0:0:0,0:0:0);
		(negedge S => ( X -: S)) =  (0:0:0,0:0:0);
	endspecify
`endif

  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1 (UDP_IN_X, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2i_1  (
output Y,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> Y) =   (0:0:0,0:0:0);
		(A0 -=> Y) =   (0:0:0,0:0:0);
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(posedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(posedge S => ( Y -: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y -: S)) =   (0:0:0,0:0:0);
	endspecify
`endif
   
  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1_INV (UDP_IN_Y, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
   
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2i_2  (
output Y,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> Y) =   (0:0:0,0:0:0);
		(A0 -=> Y) =   (0:0:0,0:0:0);
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(posedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(posedge S => ( Y -: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y -: S)) =   (0:0:0,0:0:0);
	endspecify
`endif
   
  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1_INV (UDP_IN_Y, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
   
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux2i_4  (
output Y,

input A0,
input A1,
input S

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> Y) =   (0:0:0,0:0:0);
		(A0 -=> Y) =   (0:0:0,0:0:0);
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(posedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(posedge S => ( Y -: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y +: S)) =   (0:0:0,0:0:0);
		(negedge S => ( Y -: S)) =   (0:0:0,0:0:0);
	endspecify
`endif
   
  // aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_2_1_INV (UDP_IN_Y, A0, A1, S);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
   
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux4_1  (
output X,

input A0,
input A1,
input A2,
input A3,
input S0,
input S1

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(posedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(posedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
	endspecify
`endif

// aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_4_2 (UDP_IN_X, A0, A1, A2, A3, S0, S1);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
 
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux4_2  (
output X,

input A0,
input A1,
input A2,
input A3,
input S0,
input S1

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(posedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(posedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
	endspecify
`endif

// aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_4_2 (UDP_IN_X, A0, A1, A2, A3, S0, S1);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
 
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_mux4_4  (
output X,

input A0,
input A1,
input A2,
input A3,
input S0,
input S1

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A0 +=> X) =  (0:0:0,0:0:0);
		(A0 -=> X) =  (0:0:0,0:0:0);
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(posedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(posedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X +: S0)) =  (0:0:0,0:0:0);
		(negedge S0 => ( X -: S0)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(posedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X +: S1)) =  (0:0:0,0:0:0);
		(negedge S1 => ( X -: S1)) =  (0:0:0,0:0:0);
	endspecify
`endif

// aug27,2003 - bnb changed to udp model for muxs
   
  scs8hd_pg_U_MUX_4_2 (UDP_IN_X, A0, A1, A2, A3, S0, S1);
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
 
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2_1  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2_2  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2_4  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2_8  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2b_1  (
output Y,

input AN,
input B

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , B ) ;
  or  ( UDP_IN_Y , csi_opt_276 , AN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2b_2  (
output Y,

input AN,
input B

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , B ) ;
  or  ( UDP_IN_Y , csi_opt_276 , AN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand2b_4  (
output Y,

input AN,
input B

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , B ) ;
  or  ( UDP_IN_Y , csi_opt_276 , AN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3_1  (
output Y,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3_2  (
output Y,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3_4  (
output Y,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3b_1  (
output Y,

input AN,
input B,
input C

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


  wire csi_opt_281;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(C +=> Y) =   (0:0:0,0:0:0);
		(C -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_281 , AN ) ;
  nand  ( UDP_IN_Y , B , csi_opt_281 , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3b_2  (
output Y,

input AN,
input B,
input C

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


  wire csi_opt_281;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(C +=> Y) =   (0:0:0,0:0:0);
		(C -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_281 , AN ) ;
  nand  ( UDP_IN_Y , B , csi_opt_281 , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand3b_4  (
output Y,

input AN,
input B,
input C

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


  wire csi_opt_281;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(C +=> Y) =   (0:0:0,0:0:0);
		(C -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_281 , AN ) ;
  nand  ( UDP_IN_Y , B , csi_opt_281 , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4_1  (
output Y,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4_2  (
output Y,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4_4  (
output Y,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand  ( UDP_IN_Y , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4b_1  (
output Y,

input AN,
input B,
input C,
input D

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


  wire csi_opt_285;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(C +=> Y) =   (0:0:0,0:0:0);
		(C -=> Y) =   (0:0:0,0:0:0);
		(D +=> Y) =   (0:0:0,0:0:0);
		(D -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_285 , AN ) ;
  nand  ( UDP_IN_Y , D , C , B , csi_opt_285 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4b_2  (
output Y,

input AN,
input B,
input C,
input D

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


  wire csi_opt_285;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(C +=> Y) =   (0:0:0,0:0:0);
		(C -=> Y) =   (0:0:0,0:0:0);
		(D +=> Y) =   (0:0:0,0:0:0);
		(D -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_285 , AN ) ;
  nand  ( UDP_IN_Y , D , C , B , csi_opt_285 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4b_4  (
output Y,

input AN,
input B,
input C,
input D

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


  wire csi_opt_285;

`ifdef functional
`else
reg csi_notifier;

	specify
		(AN +=> Y) =   (0:0:0,0:0:0);
		(AN -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(C +=> Y) =   (0:0:0,0:0:0);
		(C -=> Y) =   (0:0:0,0:0:0);
		(D +=> Y) =   (0:0:0,0:0:0);
		(D -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_285 , AN ) ;
  nand  ( UDP_IN_Y , D , C , B , csi_opt_285 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4bb_1  (
output Y,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
    (AN +=> Y) = (0:0:0,0:0:0);
    (BN +=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (D -=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , D , C ) ;
  or  ( UDP_IN_Y , BN , AN , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4bb_2  (
output Y,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
    (AN +=> Y) = (0:0:0,0:0:0);
    (BN +=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (D -=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , D , C ) ;
  or  ( UDP_IN_Y , BN , AN , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nand4bb_4  (
output Y,

input AN,
input BN,
input C,
input D

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
    (AN +=> Y) = (0:0:0,0:0:0);
    (BN +=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (D -=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , D , C ) ;
  or  ( UDP_IN_Y , BN , AN , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2_1  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2_2  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2_4  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2_8  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2b_1  (
output Y,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =   (0:0:0,0:0:0);
		(A -=> Y) =   (0:0:0,0:0:0);
		(BN +=> Y) =   (0:0:0,0:0:0);
		(BN -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , A ) ;
  and  ( UDP_IN_Y , csi_opt_276 , BN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2b_2  (
output Y,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =   (0:0:0,0:0:0);
		(A -=> Y) =   (0:0:0,0:0:0);
		(BN +=> Y) =   (0:0:0,0:0:0);
		(BN -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , A ) ;
  and  ( UDP_IN_Y , csi_opt_276 , BN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor2b_4  (
output Y,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =   (0:0:0,0:0:0);
		(A -=> Y) =   (0:0:0,0:0:0);
		(BN +=> Y) =   (0:0:0,0:0:0);
		(BN -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , A ) ;
  and  ( UDP_IN_Y , csi_opt_276 , BN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor3_1  (
output Y,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , C , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor3_2  (
output Y,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , C , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor3_4  (
output Y,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , C , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor3b_1  (
output Y,

input A,
input B,
input CN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =   (0:0:0,0:0:0);
		(A -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(CN +=> Y) =   (0:0:0,0:0:0);
		(CN -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_276 , A , B ) ;
  and  ( UDP_IN_Y , CN , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor3b_2  (
output Y,

input A,
input B,
input CN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =   (0:0:0,0:0:0);
		(A -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(CN +=> Y) =   (0:0:0,0:0:0);
		(CN -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_276 , A , B ) ;
  and  ( UDP_IN_Y , CN , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor3b_4  (
output Y,

input A,
input B,
input CN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =   (0:0:0,0:0:0);
		(A -=> Y) =   (0:0:0,0:0:0);
		(B +=> Y) =   (0:0:0,0:0:0);
		(B -=> Y) =   (0:0:0,0:0:0);
		(CN +=> Y) =   (0:0:0,0:0:0);
		(CN -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_276 , A , B ) ;
  and  ( UDP_IN_Y , CN , csi_opt_276 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4_1  (
output Y,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4_2  (
output Y,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4_4  (
output Y,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> Y) =  (0:0:0,0:0:0);
		(A -=> Y) =  (0:0:0,0:0:0);
		(B +=> Y) =  (0:0:0,0:0:0);
		(B -=> Y) =  (0:0:0,0:0:0);
		(C +=> Y) =  (0:0:0,0:0:0);
		(C -=> Y) =  (0:0:0,0:0:0);
		(D +=> Y) =  (0:0:0,0:0:0);
		(D -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor  ( UDP_IN_Y , A , B , C , D ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4b_1  (
output Y,

input A,
input B,
input C,
input DN

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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , DN ) ;
  nor  ( UDP_IN_Y , A , B , C , csi_opt_280 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4b_2  (
output Y,

input A,
input B,
input C,
input DN

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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , DN ) ;
  nor  ( UDP_IN_Y , A , B , C , csi_opt_280 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4b_4  (
output Y,

input A,
input B,
input C,
input DN

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


  wire csi_opt_280;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (C -=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_280 , DN ) ;
  nor  ( UDP_IN_Y , A , B , C , csi_opt_280 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4bb_1  (
output Y,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (CN +=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , A , B ) ;
  and  ( UDP_IN_Y , csi_opt_278 , CN , DN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4bb_2  (
output Y,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (CN +=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , A , B ) ;
  and  ( UDP_IN_Y , csi_opt_278 , CN , DN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_nor4bb_4  (
output Y,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
    (A -=> Y) = (0:0:0,0:0:0);
    (B -=> Y) = (0:0:0,0:0:0);
    (CN +=> Y) = (0:0:0,0:0:0);
    (DN +=> Y) = (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_278 , A , B ) ;
  and  ( UDP_IN_Y , csi_opt_278 , CN , DN ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2bb2a_1  (
output X,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_296;
  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> X) =  (0:0:0,0:0:0);
		(A1N -=> X) =  (0:0:0,0:0:0);
		(A2N +=> X) =  (0:0:0,0:0:0);
		(A2N -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_296 , A2N , A1N ) ;
  or ( csi_opt_294 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_296 , csi_opt_294 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2bb2a_2  (
output X,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_296;
  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> X) =  (0:0:0,0:0:0);
		(A1N -=> X) =  (0:0:0,0:0:0);
		(A2N +=> X) =  (0:0:0,0:0:0);
		(A2N -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_296 , A2N , A1N ) ;
  or ( csi_opt_294 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_296 , csi_opt_294 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2bb2a_4  (
output X,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_296;
  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> X) =  (0:0:0,0:0:0);
		(A1N -=> X) =  (0:0:0,0:0:0);
		(A2N +=> X) =  (0:0:0,0:0:0);
		(A2N -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_296 , A2N , A1N ) ;
  or ( csi_opt_294 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_296 , csi_opt_294 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2bb2ai_1  (
output Y,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_296;
  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> Y) =  (0:0:0,0:0:0);
		(A1N -=> Y) =  (0:0:0,0:0:0);
		(A2N +=> Y) =  (0:0:0,0:0:0);
		(A2N -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_296 , A2N , A1N ) ;
  or ( csi_opt_294 , B2 , B1 ) ;
  nand  ( UDP_IN_Y , csi_opt_296 , csi_opt_294 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2bb2ai_2  (
output Y,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_296;
  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> Y) =  (0:0:0,0:0:0);
		(A1N -=> Y) =  (0:0:0,0:0:0);
		(A2N +=> Y) =  (0:0:0,0:0:0);
		(A2N -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_296 , A2N , A1N ) ;
  or ( csi_opt_294 , B2 , B1 ) ;
  nand  ( UDP_IN_Y , csi_opt_296 , csi_opt_294 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2bb2ai_4  (
output Y,

input A1N,
input A2N,
input B1,
input B2

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


  wire csi_opt_296;
  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1N +=> Y) =  (0:0:0,0:0:0);
		(A1N -=> Y) =  (0:0:0,0:0:0);
		(A2N +=> Y) =  (0:0:0,0:0:0);
		(A2N -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_296 , A2N , A1N ) ;
  or ( csi_opt_294 , B2 , B1 ) ;
  nand  ( UDP_IN_Y , csi_opt_296 , csi_opt_294 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21a_1  (
output X,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_287 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21a_2  (
output X,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_287 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21a_4  (
output X,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_287 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ai_0  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =    (0:0:0,0:0:0);
		(A1 -=> Y) =    (0:0:0,0:0:0);
		(A2 +=> Y) =    (0:0:0,0:0:0);
		(A2 -=> Y) =    (0:0:0,0:0:0);
		(B1 +=> Y) =    (0:0:0,0:0:0);
		(B1 -=> Y) =    (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ai_1  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =    (0:0:0,0:0:0);
		(A1 -=> Y) =    (0:0:0,0:0:0);
		(A2 +=> Y) =    (0:0:0,0:0:0);
		(A2 -=> Y) =    (0:0:0,0:0:0);
		(B1 +=> Y) =    (0:0:0,0:0:0);
		(B1 -=> Y) =    (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ai_2  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =    (0:0:0,0:0:0);
		(A1 -=> Y) =    (0:0:0,0:0:0);
		(A2 +=> Y) =    (0:0:0,0:0:0);
		(A2 -=> Y) =    (0:0:0,0:0:0);
		(B1 +=> Y) =    (0:0:0,0:0:0);
		(B1 -=> Y) =    (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ai_4  (
output Y,

input A1,
input A2,
input B1

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


  wire csi_opt_287;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =    (0:0:0,0:0:0);
		(A1 -=> Y) =    (0:0:0,0:0:0);
		(A2 +=> Y) =    (0:0:0,0:0:0);
		(A2 -=> Y) =    (0:0:0,0:0:0);
		(B1 +=> Y) =    (0:0:0,0:0:0);
		(B1 -=> Y) =    (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_287 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ba_1  (
output X,

input A1,
input A2,
input B1N

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1N +=> X) =  (0:0:0,0:0:0);
		(B1N -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , A1 , A2 ) ;
  nor  ( UDP_IN_X , B1N , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ba_2  (
output X,

input A1,
input A2,
input B1N

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1N +=> X) =  (0:0:0,0:0:0);
		(B1N -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , A1 , A2 ) ;
  nor  ( UDP_IN_X , B1N , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21ba_4  (
output X,

input A1,
input A2,
input B1N

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


  wire csi_opt_273;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1N +=> X) =  (0:0:0,0:0:0);
		(B1N -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , A1 , A2 ) ;
  nor  ( UDP_IN_X , B1N , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21bai_1  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   
   not (b,B1N);
   or ( csi_opt_287 , A2 , A1 ) ;
   nand  ( UDP_IN_Y , b , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1N +=> Y) =  (0:0:0,0:0:0);
		(B1N -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21bai_2  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   
   not (b,B1N);
   or ( csi_opt_287 , A2 , A1 ) ;
   nand  ( UDP_IN_Y , b , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1N +=> Y) =  (0:0:0,0:0:0);
		(B1N -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o21bai_4  (
output Y,

input A1,
input A2,
input B1N

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

  wire b;
   
   not (b,B1N);
   or ( csi_opt_287 , A2 , A1 ) ;
   nand  ( UDP_IN_Y , b , csi_opt_287 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
`ifdef functional
`else
reg csi_notifier;

        specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1N +=> Y) =  (0:0:0,0:0:0);
		(B1N -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22a_1  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_294;
  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  or ( csi_opt_292 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22a_2  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_294;
  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  or ( csi_opt_292 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22a_4  (
output X,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_294;
  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  or ( csi_opt_292 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22ai_1  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22ai_2  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o22ai_4  (
output Y,

input A1,
input A2,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , B1 , B2 ) ;
  nor ( csi_opt_274 , A1 , A2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o31a_1  (
output X,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_292 , A2 , A1 , A3 ) ;
  and  ( UDP_IN_X , csi_opt_292 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o31a_2  (
output X,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_292 , A2 , A1 , A3 ) ;
  and  ( UDP_IN_X , csi_opt_292 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o31a_4  (
output X,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_292 , A2 , A1 , A3 ) ;
  and  ( UDP_IN_X , csi_opt_292 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o31ai_1  (
output Y,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_292 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o31ai_2  (
output Y,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_292 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o31ai_4  (
output Y,

input A1,
input A2,
input A3,
input B1

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


  wire csi_opt_292;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(A3 +=> Y) =   (0:0:0,0:0:0);
		(A3 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_292 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_292 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o32a_1  (
output X,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_299;
  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  or ( csi_opt_297 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o32a_2  (
output X,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_299;
  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  or ( csi_opt_297 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o32a_4  (
output X,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_299;
  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  or ( csi_opt_297 , B2 , B1 ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o32ai_1  (
output Y,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , A3 , A1 , A2 ) ;
  nor ( csi_opt_274 , B1 , B2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o32ai_2  (
output Y,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , A3 , A1 , A2 ) ;
  nor ( csi_opt_274 , B1 , B2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o32ai_4  (
output Y,

input A1,
input A2,
input A3,
input B1,
input B2

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


  wire csi_opt_273;
  wire csi_opt_274;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(B2 +=> Y) =  (0:0:0,0:0:0);
		(B2 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  nor ( csi_opt_273 , A3 , A1 , A2 ) ;
  nor ( csi_opt_274 , B1 , B2 ) ;
  or  ( UDP_IN_Y , csi_opt_274 , csi_opt_273 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o41a_1  (
output X,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(A4 +=> X) =  (0:0:0,0:0:0);
		(A4 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , A4 , A3 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_297 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o41a_2  (
output X,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(A4 +=> X) =  (0:0:0,0:0:0);
		(A4 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , A4 , A3 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_297 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o41a_4  (
output X,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(A4 +=> X) =  (0:0:0,0:0:0);
		(A4 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , A4 , A3 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_297 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o41ai_1  (
output Y,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(A4 +=> Y) =  (0:0:0,0:0:0);
		(A4 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , A4 , A3 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o41ai_2  (
output Y,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(A4 +=> Y) =  (0:0:0,0:0:0);
		(A4 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , A4 , A3 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o41ai_4  (
output Y,

input A1,
input A2,
input A3,
input A4,
input B1

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


  wire csi_opt_297;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(A4 +=> Y) =  (0:0:0,0:0:0);
		(A4 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , A4 , A3 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , B1 , csi_opt_297 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o211a_1  (
output X,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o211a_2  (
output X,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o211a_4  (
output X,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_294 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o211ai_1  (
output Y,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_294 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o211ai_2  (
output Y,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_294 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o211ai_4  (
output Y,

input A1,
input A2,
input B1,
input C1

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


  wire csi_opt_294;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_294 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_294 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o221a_1  (
output X,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_299;
  wire csi_opt_301;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , B2 , B1 ) ;
  or ( csi_opt_301 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_301 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o221a_2  (
output X,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_299;
  wire csi_opt_301;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , B2 , B1 ) ;
  or ( csi_opt_301 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_301 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o221a_4  (
output X,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_299;
  wire csi_opt_301;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(B2 +=> X) =  (0:0:0,0:0:0);
		(B2 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , B2 , B1 ) ;
  or ( csi_opt_301 , A2 , A1 ) ;
  and  ( UDP_IN_X , csi_opt_299 , csi_opt_301 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o221ai_1  (
output Y,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_297;
  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , B2 , B1 ) ;
  or ( csi_opt_299 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , csi_opt_299 , csi_opt_297 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o221ai_2  (
output Y,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_297;
  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , B2 , B1 ) ;
  or ( csi_opt_299 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , csi_opt_299 , csi_opt_297 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o221ai_4  (
output Y,

input A1,
input A2,
input B1,
input B2,
input C1

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


  wire csi_opt_297;
  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =   (0:0:0,0:0:0);
		(A1 -=> Y) =   (0:0:0,0:0:0);
		(A2 +=> Y) =   (0:0:0,0:0:0);
		(A2 -=> Y) =   (0:0:0,0:0:0);
		(B1 +=> Y) =   (0:0:0,0:0:0);
		(B1 -=> Y) =   (0:0:0,0:0:0);
		(B2 +=> Y) =   (0:0:0,0:0:0);
		(B2 -=> Y) =   (0:0:0,0:0:0);
		(C1 +=> Y) =   (0:0:0,0:0:0);
		(C1 -=> Y) =   (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_297 , B2 , B1 ) ;
  or ( csi_opt_299 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , csi_opt_299 , csi_opt_297 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311a_1  (
output X,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 , A3 ) ;
  and  ( UDP_IN_X , csi_opt_300 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311a_2  (
output X,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 , A3 ) ;
  and  ( UDP_IN_X , csi_opt_300 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311a_4  (
output X,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(A3 +=> X) =  (0:0:0,0:0:0);
		(A3 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 , A3 ) ;
  and  ( UDP_IN_X , csi_opt_300 , B1 , C1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311ai_0  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_299 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311ai_1  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_299 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311ai_2  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_299 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o311ai_4  (
output Y,

input A1,
input A2,
input A3,
input B1,
input C1

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


  wire csi_opt_299;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(A3 +=> Y) =  (0:0:0,0:0:0);
		(A3 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_299 , A2 , A1 , A3 ) ;
  nand  ( UDP_IN_Y , C1 , csi_opt_299 , B1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2111a_1  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 ) ;
  and  ( UDP_IN_X , B1 , C1 , csi_opt_300 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2111a_2  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 ) ;
  and  ( UDP_IN_X , B1 , C1 , csi_opt_300 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2111a_4  (
output X,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_300;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> X) =  (0:0:0,0:0:0);
		(A1 -=> X) =  (0:0:0,0:0:0);
		(A2 +=> X) =  (0:0:0,0:0:0);
		(A2 -=> X) =  (0:0:0,0:0:0);
		(B1 +=> X) =  (0:0:0,0:0:0);
		(B1 -=> X) =  (0:0:0,0:0:0);
		(C1 +=> X) =  (0:0:0,0:0:0);
		(C1 -=> X) =  (0:0:0,0:0:0);
		(D1 +=> X) =  (0:0:0,0:0:0);
		(D1 -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_300 , A2 , A1 ) ;
  and  ( UDP_IN_X , B1 , C1 , csi_opt_300 , D1 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2111ai_1  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_301;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_301 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , C1 , B1 , D1 , csi_opt_301 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2111ai_2  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_301;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_301 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , C1 , B1 , D1 , csi_opt_301 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_o2111ai_4  (
output Y,

input A1,
input A2,
input B1,
input C1,
input D1

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


  wire csi_opt_301;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A1 +=> Y) =  (0:0:0,0:0:0);
		(A1 -=> Y) =  (0:0:0,0:0:0);
		(A2 +=> Y) =  (0:0:0,0:0:0);
		(A2 -=> Y) =  (0:0:0,0:0:0);
		(B1 +=> Y) =  (0:0:0,0:0:0);
		(B1 -=> Y) =  (0:0:0,0:0:0);
		(C1 +=> Y) =  (0:0:0,0:0:0);
		(C1 -=> Y) =  (0:0:0,0:0:0);
		(D1 +=> Y) =  (0:0:0,0:0:0);
		(D1 -=> Y) =  (0:0:0,0:0:0);
	endspecify
`endif

  or ( csi_opt_301 , A2 , A1 ) ;
  nand  ( UDP_IN_Y , C1 , B1 , D1 , csi_opt_301 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2_0  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2_1  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2_2  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2_4  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2b_1  (
output X,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , BN ) ;
  or  ( UDP_IN_X , csi_opt_276 , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2b_2  (
output X,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , BN ) ;
  or  ( UDP_IN_X , csi_opt_276 , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or2b_4  (
output X,

input A,
input BN

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


  wire csi_opt_276;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(BN +=> X) =    (0:0:0,0:0:0);
		(BN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_276 , BN ) ;
  or  ( UDP_IN_X , csi_opt_276 , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or3_1  (
output X,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or3_2  (
output X,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or3_4  (
output X,

input A,
input B,
input C

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , B , A , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or3b_1  (
output X,

input A,
input B,
input CN

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(CN +=> X) =   (0:0:0,0:0:0);
		(CN -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_278 , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_278 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or3b_2  (
output X,

input A,
input B,
input CN

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(CN +=> X) =   (0:0:0,0:0:0);
		(CN -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_278 , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_278 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or3b_4  (
output X,

input A,
input B,
input CN

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


  wire csi_opt_278;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(CN +=> X) =   (0:0:0,0:0:0);
		(CN -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_278 , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_278 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4_1  (
output X,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4_2  (
output X,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4_4  (
output X,

input A,
input B,
input C,
input D

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =  (0:0:0,0:0:0);
		(A -=> X) =  (0:0:0,0:0:0);
		(B +=> X) =  (0:0:0,0:0:0);
		(B -=> X) =  (0:0:0,0:0:0);
		(C +=> X) =  (0:0:0,0:0:0);
		(C -=> X) =  (0:0:0,0:0:0);
		(D +=> X) =  (0:0:0,0:0:0);
		(D -=> X) =  (0:0:0,0:0:0);
	endspecify
`endif

  or  ( UDP_IN_X , D , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4b_1  (
output X,

input A,
input B,
input C,
input DN

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


  wire csi_opt_281;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
		(DN +=> X) =   (0:0:0,0:0:0);
		(DN -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_281 , DN ) ;
  or  ( UDP_IN_X , csi_opt_281 , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4b_2  (
output X,

input A,
input B,
input C,
input DN

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


  wire csi_opt_281;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
		(DN +=> X) =   (0:0:0,0:0:0);
		(DN -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_281 , DN ) ;
  or  ( UDP_IN_X , csi_opt_281 , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4b_4  (
output X,

input A,
input B,
input C,
input DN

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


  wire csi_opt_281;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =   (0:0:0,0:0:0);
		(A -=> X) =   (0:0:0,0:0:0);
		(B +=> X) =   (0:0:0,0:0:0);
		(B -=> X) =   (0:0:0,0:0:0);
		(C +=> X) =   (0:0:0,0:0:0);
		(C -=> X) =   (0:0:0,0:0:0);
		(DN +=> X) =   (0:0:0,0:0:0);
		(DN -=> X) =   (0:0:0,0:0:0);
	endspecify
`endif

  not ( csi_opt_281 , DN ) ;
  or  ( UDP_IN_X , csi_opt_281 , C , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4bb_1  (
output X,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(B +=> X) =    (0:0:0,0:0:0);
		(B -=> X) =    (0:0:0,0:0:0);
		(CN +=> X) =    (0:0:0,0:0:0);
		(CN -=> X) =    (0:0:0,0:0:0);
		(DN +=> X) =    (0:0:0,0:0:0);
		(DN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , DN , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4bb_2  (
output X,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(B +=> X) =    (0:0:0,0:0:0);
		(B -=> X) =    (0:0:0,0:0:0);
		(CN +=> X) =    (0:0:0,0:0:0);
		(CN -=> X) =    (0:0:0,0:0:0);
		(DN +=> X) =    (0:0:0,0:0:0);
		(DN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , DN , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_or4bb_4  (
output X,

input A,
input B,
input CN,
input DN

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


  wire csi_opt_283;

`ifdef functional
`else
reg csi_notifier;

	specify
		(A +=> X) =    (0:0:0,0:0:0);
		(A -=> X) =    (0:0:0,0:0:0);
		(B +=> X) =    (0:0:0,0:0:0);
		(B -=> X) =    (0:0:0,0:0:0);
		(CN +=> X) =    (0:0:0,0:0:0);
		(CN -=> X) =    (0:0:0,0:0:0);
		(DN +=> X) =    (0:0:0,0:0:0);
		(DN -=> X) =    (0:0:0,0:0:0);
	endspecify
`endif

  nand ( csi_opt_283 , DN , CN ) ;
  or  ( UDP_IN_X , B , A , csi_opt_283 ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_probe_s8p_8  (
output X,

input A

`ifdef SC_USE_PG_PIN
, input vgnd
, input vnb
, input vpb
, input vpwr
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
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_probec_s8p_8  (
output X,

input A

`ifdef SC_USE_PG_PIN
, input vgnd
, input vnb
, input vpb
, input vpwr
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
reg csi_notifier;

	specify
		(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  buf  ( UDP_IN_X , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfbbn_1  (
output Q,
output QN,
input D,
input SCD,
input SCE,
input CLKN,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire clk;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    not ( clk , CLKN ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , clk , mux_out ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , clk , mux_out ) ;
    `endif 
`else
    reg notifier ; 

  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLKN_delayed;
  wire SETB_delayed;
  wire RESETB_delayed;
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    not ( clk , CLKN_delayed ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , clk , mux_out , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
  wire COND_D;
  wire COND_SCD;
  wire COND_SCE;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
    assign COND_D = ( ( SCE_delayed === 1'b0 ) && CONDB ) ; 
    assign COND_SCD = ( ( SCE_delayed === 1'b1 ) && CONDB ) ; 
    assign COND_SCE = ( ( D_delayed !== SCD_delayed ) && CONDB ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( negedge CLKN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( negedge CLKN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLKN_delayed ) ; 
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLKN_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLKN_delayed , D_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLKN_delayed , SCD_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLKN_delayed , SCE_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLKN_delayed , SCE_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ; 

		$width ( negedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfbbn_2  (
output Q,
output QN,
input D,
input SCD,
input SCE,
input CLKN,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire clk;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    not ( clk , CLKN ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , clk , mux_out ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , clk , mux_out ) ;
    `endif 
`else
    reg notifier ; 

  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLKN_delayed;
  wire SETB_delayed;
  wire RESETB_delayed;
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    not ( clk , CLKN_delayed ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , clk , mux_out , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
  wire COND_D;
  wire COND_SCD;
  wire COND_SCE;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
    assign COND_D = ( ( SCE_delayed === 1'b0 ) && CONDB ) ; 
    assign COND_SCD = ( ( SCE_delayed === 1'b1 ) && CONDB ) ; 
    assign COND_SCE = ( ( D_delayed !== SCD_delayed ) && CONDB ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( negedge CLKN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( negedge CLKN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLKN_delayed ) ; 
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLKN_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLKN_delayed , D_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLKN_delayed , SCD_delayed ) ; 
	   
    $setuphold ( negedge CLKN , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLKN_delayed , SCE_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLKN_delayed , SCE_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ; 

		$width ( negedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLKN &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


// manually edited to fix tmax warnings-jfe

`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfbbp_1  (
output Q,
output QN,
input D,
input SCD,
input SCE,
input CLK,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , CLK , mux_out ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , CLK , mux_out ) ;
    `endif 
`else
    reg notifier ; 

  wire clk;
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  wire SETB_delayed;
  wire RESETB_delayed;
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , CLK_delayed , mux_out , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
  wire COND_D;
  wire COND_SCD;
  wire COND_SCE;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
    assign COND_D = ( ( SCE_delayed === 1'b0 ) && CONDB ) ; 
    assign COND_SCD = ( ( SCE_delayed === 1'b1 ) && CONDB ) ; 
    assign COND_SCE = ( ( D_delayed !== SCD_delayed ) && CONDB ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( posedge CLK => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( posedge CLK => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLK_delayed ) ; 
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLK_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND_D , COND_D , CLK_delayed , D_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND_SCD , COND_SCD , CLK_delayed , SCD_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND_SCE , COND_SCE , CLK_delayed , SCE_delayed ) ; 

    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed  , SETB_delayed ) ; 

		$width ( negedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfrbp_1  (
output Q,
output QN,

input CLK,
input D,
input SCD,
input SCE,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( RESETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( RESETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfrbp_2  (
output Q,
output QN,

input CLK,
input D,
input SCD,
input SCE,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( RESETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( RESETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfrtn_1  (
output Q,

input CLKN,
input D,
input SCD,
input SCE,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire intclk;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  not ( intclk , CLKN ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , intclk , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , intclk , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLKN_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intclk , CLKN_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , intclk , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( AWAKE && ( RESETB === 1'b1 ) ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge CLKN => ( Q : CLKN ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , negedge CLKN , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLKN_delayed ) ; 
    $setuphold ( negedge CLKN , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLKN_delayed , D_delayed ) ; 
    $setuphold ( negedge CLKN , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLKN_delayed , SCD_delayed ) ; 
    $setuphold ( negedge CLKN , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLKN_delayed , SCE_delayed ) ; 
    $setuphold ( negedge CLKN , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLKN_delayed , SCE_delayed ) ; 
    $width ( posedge CLKN &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLKN &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfrtp_1  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( RESETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( RESETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfrtp_2  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( RESETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( RESETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfrtp_4  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input RESETB

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


  wire buf_Q;
  wire reset;
  wire mux_out;

`ifdef functional
  not ( reset , RESETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_R_NO_pg #0.001 ( buf_Q , mux_out , CLK , reset ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_R #0.001 ( buf_Q , mux_out , CLK , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire RESETB_delayed;
  wire CLK_delayed;
  not ( reset , RESETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_R_NO_pg ( buf_Q , mux_out , CLK_delayed , reset , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( RESETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( RESETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfsbp_1  (
output Q,
output QN,

input CLK,
input D,
input SCD,
input SCE,
input SETB

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


  wire buf_Q;
  wire set;
  wire mux_out;

`ifdef functional
  not ( set , SETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , mux_out , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , mux_out , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , mux_out , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( SETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( SETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge SETB => ( QN +: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfsbp_2  (
output Q,
output QN,

input CLK,
input D,
input SCD,
input SCE,
input SETB

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


  wire buf_Q;
  wire set;
  wire mux_out;

`ifdef functional
  not ( set , SETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , mux_out , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , mux_out , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , mux_out , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( SETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( SETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge SETB => ( QN +: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfstp_1  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input SETB

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


  wire buf_Q;
  wire set;
  wire mux_out;

`ifdef functional
  not ( set , SETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , mux_out , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , mux_out , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , mux_out , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( SETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( SETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfstp_2  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input SETB

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


  wire buf_Q;
  wire set;
  wire mux_out;

`ifdef functional
  not ( set , SETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , mux_out , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , mux_out , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , mux_out , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( SETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( SETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfstp_4  (
output Q,

input CLK,
input D,
input SCD,
input SCE,
input SETB

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


  wire buf_Q;
  wire set;
  wire mux_out;

`ifdef functional
  not ( set , SETB ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , mux_out , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , mux_out , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , mux_out , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  wire COND2;
  wire COND3;
  wire COND4;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( ( SETB_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && COND0 ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && COND0 ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && COND0 ) ; 
  assign COND4 = ( ( SETB === 1'b1 ) && AWAKE ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfxbp_1  (
output Q,
output QN,

input CLK,
input D,
input SCD,
input SCE

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


  wire buf_Q;
  wire mux_out;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfxbp_2  (
output Q,
output QN,

input CLK,
input D,
input SCD,
input SCE

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


  wire buf_Q;
  wire mux_out;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfxtp_1  (
output Q,

input CLK,
input D,
input SCD,
input SCE

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


  wire buf_Q;
  wire mux_out;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfxtp_2  (
output Q,

input CLK,
input D,
input SCD,
input SCE

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


  wire buf_Q;
  wire mux_out;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfxtp_4  (
output Q,

input CLK,
input D,
input SCD,
input SCE

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


  wire buf_Q;
  wire mux_out;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_sdlclkp_1  (
output GCLK,

input SCE,
input GATE,
input CLK

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

  wire m0;
  wire m0n;
  wire clkn;
  not ( m0n , m0 ) ; 

`ifdef functional

  not ( clkn , CLK ) ; 
  nor ( SCE_GATE , GATE , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( m0 , SCE_GATE , clkn ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( m0 , SCE_GATE , clkn ) ;
`endif 
  and ( GCLK , m0n , CLK ) ; 
`else
  wire CLK_delayed;
  wire SCE_delayed;
  wire GATE_delayed;
  wire SCE_GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
  nor ( SCE_GATE_delayed , GATE_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( m0 , SCE_GATE_delayed , clkn , notifier , vpwr , vgnd ) ; 
  and ( GCLK , m0n , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  wire SCE_AWAKE;
  assign SCE_AWAKE = (AWAKE&(GATE_delayed === 1'b0));
  wire GATE_AWAKE;
  assign GATE_AWAKE = (AWAKE&(SCE_delayed === 1'b0));
  specify
    ( CLK +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_sdlclkp_2  (
output GCLK,

input SCE,
input GATE,
input CLK

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

  wire m0;
  wire m0n;
  wire clkn;
  not ( m0n , m0 ) ; 

`ifdef functional

  not ( clkn , CLK ) ; 
  nor ( SCE_GATE , GATE , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( m0 , SCE_GATE , clkn ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( m0 , SCE_GATE , clkn ) ;
`endif 
  and ( GCLK , m0n , CLK ) ; 
`else
  wire CLK_delayed;
  wire SCE_delayed;
  wire GATE_delayed;
  wire SCE_GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
  nor ( SCE_GATE_delayed , GATE_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( m0 , SCE_GATE_delayed , clkn , notifier , vpwr , vgnd ) ; 
  and ( GCLK , m0n , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  wire SCE_AWAKE;
  assign SCE_AWAKE = (AWAKE&(GATE_delayed === 1'b0));
  wire GATE_AWAKE;
  assign GATE_AWAKE = (AWAKE&(SCE_delayed === 1'b0));
  specify
    ( CLK +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_sdlclkp_4  (
output GCLK,

input SCE,
input GATE,
input CLK

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

  wire m0;
  wire m0n;
  wire clkn;
  not ( m0n , m0 ) ; 

`ifdef functional

  not ( clkn , CLK ) ; 
  nor ( SCE_GATE , GATE , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DL_P_NO_pg  ( m0 , SCE_GATE , clkn ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( m0 , SCE_GATE , clkn ) ;
`endif 
  and ( GCLK , m0n , CLK ) ; 
`else
  wire CLK_delayed;
  wire SCE_delayed;
  wire GATE_delayed;
  wire SCE_GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
  nor ( SCE_GATE_delayed , GATE_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DL_P_NO_pg ( m0 , SCE_GATE_delayed , clkn , notifier , vpwr , vgnd ) ; 
  and ( GCLK , m0n , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  wire SCE_AWAKE;
  assign SCE_AWAKE = (AWAKE&(GATE_delayed === 1'b0));
  wire GATE_AWAKE;
  assign GATE_AWAKE = (AWAKE&(SCE_delayed === 1'b0));
  specify
    ( CLK +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif


endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


module scs8hd_sedfxbp_1  (
output Q,
output QN,
input CLK,
input D,
input DE,
input SCE,
input 


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


  wire buf_Q;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCE ,  ) , ( DE$D , buf_Q , D , DE ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCD_delayed , SCE_delayed ) , ( DE$D , buf_Q , D_delayed , DE_delayed ) ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( AWAKE && ( SCE_delayed === 1'b0 ) && ( DE_delayed === 1'b1 ) ) ; 
  assign COND2 = ( AWAKE && ( SCE_delayed === 1'b1 ) ) ; 
  assign COND3 = ( AWAKE && ( DE_delayed === 1'b1 ) && ( D_delayed !== SCD_delayed ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


module scs8hd_sedfxbp_2  (
output Q,
output QN,
input CLK,
input D,
input DE,
input SCE,
input 


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


  wire buf_Q;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCE ,  ) , ( DE$D , buf_Q , D , DE ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCD_delayed , SCE_delayed ) , ( DE$D , buf_Q , D_delayed , DE_delayed ) ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( AWAKE && ( SCE_delayed === 1'b0 ) && ( DE_delayed === 1'b1 ) ) ; 
  assign COND2 = ( AWAKE && ( SCE_delayed === 1'b1 ) ) ; 
  assign COND3 = ( AWAKE && ( DE_delayed === 1'b1 ) && ( D_delayed !== SCD_delayed ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


module scs8hd_sedfxtp_1  (
output Q,
input CLK,
input D,
input DE,
input SCE,
input 


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


  wire buf_Q;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCE ,  ) , ( DE$D , buf_Q , D , DE ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCD_delayed , SCE_delayed ) , ( DE$D , buf_Q , D_delayed , DE_delayed ) ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( AWAKE && ( SCE_delayed === 1'b0 ) && ( DE_delayed === 1'b1 ) ) ; 
  assign COND2 = ( AWAKE && ( SCE_delayed === 1'b1 ) ) ; 
  assign COND3 = ( AWAKE && ( DE_delayed === 1'b1 ) && ( D_delayed !== SCD_delayed ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


module scs8hd_sedfxtp_2  (
output Q,
input CLK,
input D,
input DE,
input SCE,
input 


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


  wire buf_Q;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCE ,  ) , ( DE$D , buf_Q , D , DE ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCD_delayed , SCE_delayed ) , ( DE$D , buf_Q , D_delayed , DE_delayed ) ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( AWAKE && ( SCE_delayed === 1'b0 ) && ( DE_delayed === 1'b1 ) ) ; 
  assign COND2 = ( AWAKE && ( SCE_delayed === 1'b1 ) ) ; 
  assign COND3 = ( AWAKE && ( DE_delayed === 1'b1 ) && ( D_delayed !== SCD_delayed ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


module scs8hd_sedfxtp_4  (
output Q,
input CLK,
input D,
input DE,
input SCE,
input 


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


  wire buf_Q;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCE ,  ) , ( DE$D , buf_Q , D , DE ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , DE$D , SCD_delayed , SCE_delayed ) , ( DE$D , buf_Q , D_delayed , DE_delayed ) ; 
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( AWAKE && ( SCE_delayed === 1'b0 ) && ( DE_delayed === 1'b1 ) ) ; 
  assign COND2 = ( AWAKE && ( SCE_delayed === 1'b1 ) ) ; 
  assign COND3 = ( AWAKE && ( DE_delayed === 1'b1 ) && ( D_delayed !== SCD_delayed ) ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , negedge DE , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge  , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_tap_1  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_tap_2  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_tapvgnd_1  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_tapvgnd2_1  (

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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


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
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor2_1  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xnor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor2_2  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xnor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor2_4  (
output Y,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( Y -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( Y -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xnor  ( UDP_IN_Y , A , B ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_Y, UDP_IN_Y, vpwr, vgnd) ;
  buf  (Y, UDP_OUT_Y) ;
  `else
    buf ( Y , UDP_IN_Y ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor3_1  (
output X,
input A,
input B,
input C

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xnor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor3_2  (
output X,
input A,
input B,
input C

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xnor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xnor3_4  (
output X,
input A,
input B,
input C

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xnor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xor2_1  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xor  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xor2_2  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xor  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xor2_4  (
output X,

input A,
input B

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



`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);  // delays are tris,tfall
	endspecify
`endif

  xor  ( UDP_IN_X , B , A ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;
  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xor3_1  (
output X,
input A,
input B,
input C

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xor3_2  (
output X,
input A,
input B,
input C

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps


module scs8hd_xor3_4  (
output X,
input A,
input B,
input C

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


`ifdef functional
`else
reg csi_notifier;

	specify
		(posedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(posedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X +: A)) =  (0:0:0,0:0:0);
		(negedge A => ( X -: A)) =  (0:0:0,0:0:0);
		(posedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(posedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X +: B)) =  (0:0:0,0:0:0);
		(negedge B => ( X -: B)) =  (0:0:0,0:0:0);
		(posedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(posedge C => ( X -: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X +: C)) =  (0:0:0,0:0:0);
		(negedge C => ( X -: C)) =  (0:0:0,0:0:0);
	endspecify
`endif

  xor ( UDP_IN_X , A , B , C ) ;
  `ifdef SC_USE_PG_PIN

  scs8hd_pg_U_VPWR_VGND (UDP_OUT_X, UDP_IN_X, vpwr, vgnd) ;
  buf  (X, UDP_OUT_X) ;

  `else
    buf ( X , UDP_IN_X ) ;
  `endif
endmodule
`endcelldefine