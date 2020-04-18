{#
	DESCRIPTION
		D-Flip Flop with enable (q only)
	PARAMETER MAPPING
		in[0]	:	CLK
		in[1]	:	D
		in[2]	:	DE
		out[0]	:	Q
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


  wire buf_Q;

`ifdef functional
   {? lib ?}_pg_U_MUX_2_1 ( mux_out , buf_Q , {? in[1] ?} , {? in[2] ?} )  ; 
  `ifdef SC_USE_PG_PIN
    {? lib ?}_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , {? in[0] ?} ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 
  `else
    {? lib ?}_pg_U_DF_P #0.001 ( buf_Q , mux_out , {? in[0] ?} ) ;
  `endif

`else
  reg notifier ; 
  wire D_delayed;
  wire DE_delayed;
  wire CLK_delayed;
  {? lib ?}_pg_U_MUX_2_1 ( mux_out , buf_Q , D_delayed , DE_delayed )  ; 
  {? lib ?}_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 

  wire AWAKE;
  wire COND0;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( DE_delayed === 1'b1 ) ) ; 
  specify
    ( posedge {? in[0] ?} => ( {? out[0] ?} : {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge {? in[0] ?} , posedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , negedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , DE_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , posedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , negedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND0 ,  COND0 , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( {? out[0] ?} , buf_Q ) ; 

endmodule
`endcelldefine
