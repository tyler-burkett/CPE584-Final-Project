


`celldefine
`timescale 1ns / 1ps



module scs8hd_sdfxtp_4  (
output Q,

input CLK,
input D,
input SCD,
input SCE

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
  wire mux_out;

`ifdef functional
  scs8hd_pg_U_MUX_2_1 ( mux_out , D , SCD , SCE ) ; 
`ifdef SC_USE_PG_PIN
 scs8hd_pg_U_DF_P_NO_pg #0.001 ( buf_Q , mux_out , CLK ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DF_P #0.001 ( buf_Q , mux_out , CLK ) ;
`endif 
`else
  reg notifier ; 
  wire D_delayed;
  wire SCD_delayed;
  wire SCE_delayed;
  wire CLK_delayed;
  scs8hd_pg_U_MUX_2_1 ( mux_out , D_delayed , SCD_delayed , SCE_delayed ) ; 
scs8hd_pg_U_DF_P_NO_pg ( buf_Q , mux_out , CLK_delayed , notifier , vpwr , vgnd ) ; 

  wire AWAKE;
  wire COND1;
  wire COND2;
  wire COND3;
  assign AWAKE = ( vpwr === 1'b1 ) ; 
  assign COND1 = ( ( SCE_delayed === 1'b0 ) && AWAKE ) ; 
  assign COND2 = ( ( SCE_delayed === 1'b1 ) && AWAKE ) ; 
  assign COND3 = ( ( D_delayed !== SCD_delayed ) && AWAKE ) ; 
  specify
    ( posedge CLK => ( Q : CLK ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ; 
    $setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ; 
    $width ( posedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
  endspecify
`endif

buf ( Q , buf_Q ) ; 

endmodule
`endcelldefine