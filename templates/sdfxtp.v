{#
	DESCRIPTION
		Scan D-Flip Flop (q only)
	PARAMETER MAPPING
		in[0]	:	CLK
		in[1]	:	D
		in[2]	:	SCD
		in[3]	:	SCE
		out[0]	:	Q
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps



module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},

input {? in[0] ?},
input {? in[1] ?},
input {? in[2] ?},
input {? in[3] ?}

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


  wire buf_Q;
  wire mux_out;

`ifdef functional
  {? lib ?}_pg_U_MUX_2_1 ( mux_out , {? in[1] ?} , {? in[2] ?} , {? in[3] ?} ) ; 
`ifdef SC_USE_PG_PIN
 {? lib ?}_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , {? in[0] ?} ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
`else
 {? lib ?}_pg_U_DF_P #0.001 ( buf_Q , mux_out , {? in[0] ?} ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  {? lib ?}_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
{? lib ?}_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge {? in[0] ?} => ( {? out[0] ?} : {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge {? in[0] ?} , posedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , negedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , posedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , negedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , posedge {? in[3] ?} , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , negedge {? in[3] ?} , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( {? out[0] ?} , buf_Q ) ; 

endmodule
`endcelldefine
