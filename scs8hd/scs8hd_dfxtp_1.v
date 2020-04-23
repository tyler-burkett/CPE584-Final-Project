


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfxtp_1  (
output Q,

input CLK,
input D

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


  wire buf_Q;

`ifdef functional
  `ifdef SC_USE_PG_PIN
   scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , D , CLK ,  , vpwr , vgnd ) ;
  `else
   scs8hd_pg_U_DF_P #0.001 ( buf_Q , D , CLK ) ;
  `endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_DF_P_NO_pg ( buf_Q , D_delayed , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , CLK_delayed , D_delayed ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine