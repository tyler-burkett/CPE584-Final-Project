{#
	DESCRIPTION
		D-type transparent latch with aysnc reset and active low enable (q and qb)
	PARAMETER MAPPING
		in[0]	:	RESETB
		in[1]	:	D
		in[2]	:	GATEN
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


  wire reset;
  wire intgate;

`ifdef functional
  not ( reset , {? in[0] ?} ) ; 
  not ( intgate , {? in[2] ?} ) ; 
`ifdef SC_USE_PG_PIN
 {? lib ?}_pg_U_DL_P_R_NO_pg #0.001 ( buf_Q , {? in[1] ?} , intgate , reset ,  , {? vpwr[0] ?} , {? vgnd[0] ?} ) ;
`else
 {? lib ?}_pg_U_DL_P_R #0.001 ( buf_Q , {? in[1] ?} , intgate , reset ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire GATEN_delayed;
  wire RESET_delayed;
  not ( reset , RESETB_delayed ) ; 
  not ( intgate , GATEN_delayed ) ; 
{? lib ?}_pg_U_DL_P_R_NO_pg ( buf_Q , D_delayed , intgate , reset , notifier , {? vpwr[0] ?} , {? vgnd[0] ?} ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( {? vpwr[0] ?} === 1'b1 ) ; 
  assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
  assign COND1 = ( AWAKE && ( {? in[0] ?} === 1'b1 ) ) ; 
  specify
    ( negedge {? in[0] ?} => ( {? out[0] ?} +: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( {? in[1] ?} +=> {? out[0] ?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge {? in[2] ?} => ( {? out[0] ?} : {? in[2] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall

    ( negedge {? in[0] ?} => ( {? out[1] ?} -: {? in[0] ?} ) ) = ( 0:0:0 , 0:0:0 ) ;  // delay is tfall
    ( {? in[1] ?} -=> {? out[1] ?} ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( negedge {? in[2] ?} => ( {? out[1] ?} : {? in[2] ?} ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
     
    $recrem ( posedge {? in[0] ?} , posedge {? in[2] ?} , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , GATEN_delayed ) ; 
    $setuphold ( posedge {? in[2] ?} , posedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge {? in[2] ?} , negedge {? in[1] ?} , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , GATEN_delayed , D_delayed ) ; 
    $width ( negedge {? in[2] ?} &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( posedge {? in[0] ?} &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( {? out[0] ?} , buf_Q ) ; 
not ( {? out[1] ?} , buf_Q ) ; 

endmodule
`endcelldefine
