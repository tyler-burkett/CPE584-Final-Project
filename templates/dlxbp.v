{#
	DESCRIPTION
		D-type transparent latch with active high enable (q and qb)
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	GATE
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
 {? lib ?}_pg_U_DL_P_NO_pg #0.001 ( buf_Q , {? in[0] ?} , {? in[1] ?} ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
`else
 {? lib ?}_pg_U_DL_P #0.001 ( buf_Q , {? in[0] ?} , {? in[1] ?} ) ;
`endif 
`else
  wire GATE_delayed;
  wire D_delayed;
  reg notifier ; 
{? lib ?}_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , GATE_delayed , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 
`endif

  buf ( {? out[0] ?} , buf_Q ) ; 
  not ( {? out[1] ?} , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
	specify
		 ( {? in[0] ?} +=> {? out[0] ?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( {? in[0] ?} -=> {? out[1] ?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( posedge {? in[1] ?} => ( {? out[0] ?} +: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
		 ( posedge {? in[1] ?} => ( {? out[1] ?} -: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
		$width ( posedge {? in[1] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( negedge {? in[1] ?} , posedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge {? in[1] ?} , negedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine
