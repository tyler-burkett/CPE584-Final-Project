


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxbn_2  (
output Q,
output QN,

input D,
input GATEN

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



  wire gate;
  wire buf_Q;

`ifdef functional

  not ( gate , GATEN ) ; 
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DL_P_NO_pg #0.001 ( buf_Q , D , gate ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DL_P #0.001 ( buf_Q , D , gate ) ;
  `endif 

`else
  wire GATEN_delayed;
  wire D_delayed;

  reg notifier ; 
  not ( gate , GATEN_delayed ) ; 
  scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , gate , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1 ) ; 

  specify
    ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    ( D -=> QN ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
    ( negedge GATEN => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( negedge GATEN => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are  tris , tfall
    
    $width ( negedge GATEN &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( posedge GATEN , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
    $setuphold ( posedge GATEN , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATEN_delayed , D_delayed ) ; 
  endspecify

`endif

  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 

endmodule
`endcelldefine