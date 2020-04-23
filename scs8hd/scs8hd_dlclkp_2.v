// Automatically edited by removePhraseFromMultipleFiles.pl 
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
`endcelldefine