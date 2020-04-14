{?header?}

`celldefine
`timescale {?timescale?}


module {?lib?}_dlclkp_{?drive?}  (
output GCLK,

input {?GATE0?},
input {?CLK0?}

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

  wire m0;
  wire clkn;

`ifdef functional
  not ( clkn , {?CLK0?} ) ; 
`ifdef SC_USE_PG_PIN
 {?lib?}_pg_U_DL_P_NO_pg  ( m0 , {?GATE0?} , clkn ,  , {?vpwr0?} , {?vgnd0?} ) ;
`else
 {?lib?}_pg_U_DL_P  ( m0 , {?GATE0?} , clkn ) ;
`endif 
  and ( GCLK , m0 , {?CLK0?} ) ; 

`else
  wire CLK_delayed;
  wire GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
{?lib?}_pg_U_DL_P_NO_pg ( m0 , GATE_delayed , clkn , notifier , {?vpwr0?} , {?vgnd0?} ) ; 
  and ( GCLK , m0 , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( {?vpwr0?} === 1'b1 ) ; 
  specify
    ( {?CLK0?} +=> GCLK ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $width ( negedge {?CLK0?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge {?CLK0?} , posedge {?GATE0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge {?CLK0?} , negedge {?GATE0?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
  endspecify
`endif


endmodule
`endcelldefine
