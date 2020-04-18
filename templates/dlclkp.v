{#
	DESCRIPTION
		Positive edge triggered clock gating latch with active high enable (q only), output ECK
	PARAMETER MAPPING
		in[0]	:	GATE
		in[1]	:	CLK
		out[0]	:	GCLK
-#}


{? header ?}


// manual edit to fix TMAX warnings-jfe

`celldefine
`timescale 1ns / 1ps


module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},

input {? in[0] ?},
input {? in[1] ?}

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
  wire clkn;

`ifdef functional
  not ( clkn , {? in[1] ?} ) ; 
`ifdef SC_USE_PG_PIN
 {? lib ?}_pg_U_DL_P_NO_pg  ( m0 , {? in[0] ?} , clkn ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
`else
 {? lib ?}_pg_U_DL_P  ( m0 , {? in[0] ?} , clkn ) ;
`endif 
  and ( {? out[0] ?} , m0 , {? in[1] ?} ) ; 

`else
  wire CLK_delayed;
  wire GATE_delayed;
  reg notifier ; 
  not ( clkn , CLK_delayed ) ; 
{? lib ?}_pg_U_DL_P_NO_pg ( m0 , GATE_delayed , clkn , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 
  and ( {? out[0] ?} , m0 , CLK_delayed ) ; 

  wire AWAKE;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
  specify
    ( {? in[1] ?} +=> {? out[0] ?} ) = ( 0:0:0 , 0:0:0 ) ;                         // delays are tris , tfall
    $width ( negedge {? in[1] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge {? in[1] ?} , posedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
    $setuphold ( posedge {? in[1] ?} , negedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , GATE_delayed ) ; 
  endspecify
`endif


endmodule
`endcelldefine
