


`celldefine
`timescale 1ns / 1ps



module scs8hd_dlxtp_1  (
output Q,

input D,
input GATE

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
 scs8hd_pg_U_DL_P_NO_pg  ( buf_Q , D , GATE ,  , vpwr , vgnd ) ;
`else
 scs8hd_pg_U_DL_P  ( buf_Q , D , GATE ) ;
`endif 
`else
  wire GATE_delayed;
  wire D_delayed;
  reg notifier ; 
scs8hd_pg_U_DL_P_NO_pg ( buf_Q , D_delayed , GATE_delayed , notifier , vpwr , vgnd ) ; 
`endif

  buf ( Q , buf_Q ) ; 

`ifdef functional
`else
  wire AWAKE;
  assign AWAKE= ( vpwr === 1'b1 ) ; 
	specify
		 ( D +=> Q ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
    
		 ( posedge GATE => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
    
		$width ( posedge GATE &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    
    $setuphold ( negedge GATE , posedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
    $setuphold ( negedge GATE , negedge D , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , GATE_delayed , D_delayed ) ; 
	endspecify
`endif

endmodule
`endcelldefine