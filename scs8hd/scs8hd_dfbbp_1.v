// Automatically edited by removePhraseFromMultipleFiles.pl 
// iptguser	Tue Aug 23 13:13:19 EDT 2011 
// \`suppress_faults;^\n 
// \`ifdef TETRAMAX;^\n 
// \`ifdef functional;\`else 
// \`delay_mode_path;^\n 
// \`disable_portfaults;\`nosuppress_faults 
 
// Automatically modified by replacePGwithIfDef.pl 
// iptguser	Tue Aug 23 12:32:33 EDT 2011


`celldefine
`timescale 1ns / 1ps



module scs8hd_dfbbp_1  (
output Q,
output QN,
input D,
input CLK,
input SETB,
input RESETB

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

  
  wire reset;
  wire set;
  wire buf_Q;
  
`ifdef functional
    not ( reset , RESETB ) ; 
    not ( set , SETB ) ; 
    `ifdef SC_USE_PG_PIN
     scs8hd_pg_U_DFB_SETDOM_NO_pg #0.001 ( buf_Q , set , reset , CLK , D ,  , vpwr , vgnd ) ;
    `else
     scs8hd_pg_U_DFB_SETDOM #0.001 ( buf_Q , set , reset , CLK , D ) ;
    `endif 
`else
  wire CLK_delayed;
  wire RESETB_delayed;
  wire SETB_delayed;
    reg notifier ; 
    
    not ( reset , RESETB_delayed ) ; 
    not ( set , SETB_delayed ) ; 
    scs8hd_pg_U_DFB_SETDOM_NO_pg ( buf_Q , set , reset , CLK_delayed , D_delayed , notifier , vpwr , vgnd ) ; 
    
  wire AWAKE;
  wire COND0;
  wire COND1;
  wire CONDB;
    assign AWAKE = ( vpwr === 1'b1 ) ; 
    assign COND0 = ( AWAKE && ( RESETB_delayed === 1'b1 ) ) ; 
    assign COND1 = ( AWAKE && ( SETB_delayed === 1'b1 ) ) ; 
    assign CONDB = ( COND0 & COND1 ) ; 
	specify
		 ( negedge RESETB => ( Q +: RESETB ) ) = 0:0:0 ;   // delay is tfall
		 ( negedge RESETB => ( QN -: RESETB ) ) = 0:0:0 ;  // delay is tris

		 ( SETB => ( Q -: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;       // delay is tris , tfall
		 ( SETB => ( QN +: SETB ) ) = ( 0:0:0 , 0:0:0 ) ;      // delay is tris , tfall

		 ( posedge CLK => ( Q +: D ) ) = ( 0:0:0 , 0:0:0 ) ;  // delays are tris , tfall
		 ( posedge CLK => ( QN -: D ) ) = ( 0:0:0 , 0:0:0 ) ; // delays are tris , tfall
	   
    $recrem ( posedge SETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND0 , COND0 , SETB_delayed , CLK_delayed ) ; 
    $recrem ( posedge RESETB , posedge CLK , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , RESETB_delayed , CLK_delayed ) ; 
	   
    $setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLK_delayed , D_delayed ) ; 
    $setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , CONDB , CONDB , CLK_delayed , D_delayed ) ; 


    $setuphold ( posedge SETB , posedge RESETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , SETB_delayed , RESETB_delayed  ) ;
    $setuphold ( posedge RESETB , posedge SETB , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , SETB_delayed  ) ;

		$width ( negedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
		$width ( posedge CLK &&& CONDB , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge SETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
    $width ( negedge RESETB &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ; 
	endspecify

   
`endif
  buf ( Q , buf_Q ) ; 
  not ( QN , buf_Q ) ; 


endmodule
`endcelldefine