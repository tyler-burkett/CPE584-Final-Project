


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
`endcelldefine