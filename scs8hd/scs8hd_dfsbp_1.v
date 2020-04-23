


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfsbp_1  (
output Q,
output QN,

input CLK,
input D,
input SETB

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
  wire set;

`ifdef functional
  not ( set , SETB ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_S_NO_pg #0.001 ( buf_Q , D , CLK , set ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P_S #0.001 ( buf_Q , D , CLK , set ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SETB_delayed;
  wire CLK_delayed;
  not ( set , SETB_delayed ) ; 
scs8hd_pg_U_DF_P_S_NO_pg ( buf_Q , D_delayed , CLK_delayed , set , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND0;
  wire COND1;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND0 = ( SETB_delayed === 1'b1 ) ; 
  assign COND1 = ( SETB === 1'b1 ) ; 
  specify
    ( negedge SETB => ( Q -: SETB ) ) = 0:0:0 ;  // delay is tris
    ( negedge SETB => ( QN +: SETB ) ) = 0:0:0 ;  // delay is tris
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    ( posedge CLK => ( QN : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , CLK_delayed ) ; 
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , CLK_delayed , D_delayed ) ; 
    
    $width ( posedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& COND1 , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 
not ( QN , buf_Q ) ; 

endmodule
`endcelldefine