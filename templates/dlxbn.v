{#
	DESCRIPTION
		D-type transparent latch with active low enable (q and qb)
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	GATEN
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



  wire gate;
  wire buf_Q;

`ifdef functional

  not ( gate , {? in[1] ?} ) ; 
  `ifdef SC_USE_PG_PIN
   {? lib ?}_pg_U_DL_P_NO_pg #0.001 ( buf_Q , {? in[0] ?} , gate ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
  `else
   {? lib ?}_pg_U_DL_P #0.001 ( buf_Q , {? in[0] ?} , gate ) ;
  `endif 

`else
  wire GATEN_delayed;
  wire D_delayed;

  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
  {? lib ?}_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 

  wire AWAKE;
  assign AWAKE = ( {? vpwr[0] ?} === 1 ) ; 

  specify
    ( {? in[0] ?} +=> {? out[0] ?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( {? in[0] ?} -=> {? out[1] ?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
    ( negedge {? in[1] ?} => ( {? out[0] ?} +: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( negedge {? in[1] ?} => ( {? out[1] ?} -: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
    $width ( negedge {? in[1] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge {? in[1] ?} , posedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[1] ?} , negedge {? in[0] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
  endspecify

`endif

  buf ( {? out[0] ?} , buf_Q ) ; 
  not ( {? out[1] ?} , buf_Q ) ; 

endmodule
`endcelldefine
