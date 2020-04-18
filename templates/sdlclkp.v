{#
	DESCRIPTION
		Positive edge triggered clock gating latch (active hi-enable, active high SE, q only), output ECK
	PARAMETER MAPPING
		in[0]	:	SCE
		in[1]	:	GATE
		in[2]	:	CLK
		out[0]	:	GCLK
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},

input {? in[0] ?},
input {? in[1] ?},
input {? in[2] ?}

`ifdef SC_USE_PG_PIN
, input {? vpwr[0] ?}
, input {? vgnd[0] ?}
, input {? vpb[0] ?}
, input {? vnb[0] ?}
`endif

);

`ifdef functional
`else
`ifdef SC_USE_PG_PIN
`else
supply1 {? vpwr[0] ?};
supply0 {? vgnd[0] ?};
supply1 {? vpb[0] ?};
supply0 {? vnb[0] ?};
`endif
`endif

  wire m0;
  wire m0n;
  wire clkn;
  not ( m0n , m0 ) ; 

`ifdef functional

  not ( clkn , {? in[2] ?} ) ; 
  nor ( SCE_GATE , {? in[1] ?} , {? in[0] ?} ) ; 
`ifdef SC_USE_PG_PIN
 {? lib ?}_pg_U_DL_P_NO_pg  ( m0 , SCE_GATE , clkn ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
`else
 {? lib ?}_pg_U_DL_P  ( m0 , SCE_GATE , clkn ) ;
`endif 
  and ( {? out[0] ?} , m0n , {? in[2] ?} ) ; 
`else
  wire CLK_delayed;
  wire SCE_delayed;
  wire GATE_delayed;
  wire SCE_GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
  nor ( SCE_GATE_delayed , GATE_delayed , SCE_delayed ) ; 
{? lib ?}_pg_U_DL_P_NO_pg ( m0 , SCE_GATE_delayed , clkn , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 
  and ( {? out[0] ?} , m0n , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
  wire SCE_AWAKE;
  assign SCE_AWAKE = (AWAKE&(GATE_delayed === 1'b0));
  wire GATE_AWAKE;
  assign GATE_AWAKE = (AWAKE&(SCE_delayed === 1'b0));
  specify
    ( {? in[2] ?} +=> {? out[0] ?} ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $setuphold ( posedge {? in[2] ?} , posedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge {? in[2] ?} , negedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge {? in[2] ?} , posedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge {? in[2] ?} , negedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ; 
    $width ( negedge {? in[2] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif


endmodule
`endcelldefine
