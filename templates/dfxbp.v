{#
	DESCRIPTION
		D-Flip Flop (q and qb)
	PARAMETER MAPPING
		in[0]	:	CLK
		in[1]	:	D
		out[0]	:	Q
		out[1]	:	QN
-#}


{? header ?}


`celldefine
`timescale 1ns / 1ps



module {? lib ?}_{? name ?}_{? drive ?}  (
output {? out[0] ?},
output {? out[1] ?},

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


  wire buf_Q;

`ifdef functional

  `ifdef SC_USE_PG_PIN

   {? lib ?}_pg_U_DF_P_NO_pg #0.001 ( buf_Q , {? in[1] ?} , {? in[0] ?} ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;

  `else

   {? lib ?}_pg_U_DF_P #0.001 ( buf_Q , {? in[1] ?} , {? in[0] ?} ) ;

  `endif 

`else

  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  {? lib ?}_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 

  wire AWAKE;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 

  specify

    ( posedge {? in[0] ?} => ( {? out[0] ?} : {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge {? in[0] ?} => ( {? out[1] ?} : {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    $width ( posedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 

    $setuphold ( posedge {? in[0] ?} , posedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[0] ?} , negedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 

  endspecify

`endif

buf ( {? out[0] ?} , buf_Q ) ; 
not ( {? out[1] ?} , buf_Q ) ; 

endmodule
`endcelldefine
