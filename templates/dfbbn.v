{?header?}


`celldefine
`timescale {?timescale?}


module {?lib?}_dfbbn_{?drive?} (
output {?q?},
output {?q_n?},
input {?d?},
input {?clk_n?},
input {?set_b?},
input {?reset_b?}

`ifdef SC_USE_PG_PIN
, input {?vpwr0?}
, input {?vgnd0?}
, input {?vpb0?}
, input {?vnb?}
`endif

);
    
    `ifdef functional
    `else
    `ifdef SC_USE_PG_PIN
    `else
    supply1 {?vpwr0?};
    supply0 {?vgnd0?};
    supply1 {?vpb0?};
    supply0 {?vnb?};
    `endif
    `endif


    wire reset;
    wire set;
    wire clk;
    wire buf_Q;
    

    `ifdef functional
    not (reset, {?reset_b?}); 
    not (set, {?set_b?}); 
    not (clk, {?clk_n?});

    `ifdef SC_USE_PG_PIN
     {?lib?}_pg_U_DFB_SETDOM_NO_pg #0.001 (buf_Q, set, reset, clk, {?d?}, , {?vpwr0?}, {?vgnd0?});
    `else
     {?lib?}_pg_U_DFB_SETDOM #0.001 (buf_Q, set, reset, clk, {?d?});
    `endif


    `else
    wire CLKN_delayed;
    wire RESETB_delayed;
    wire SETB_delayed;
    reg notifier; 
    
    not (reset, RESETB_delayed); 
    not (set, SETB_delayed); 
    not (clk, CLKN_delayed); 
    {?lib?}_pg_U_DFB_SETDOM_NO_pg (buf_Q, set, reset, clk, D_delayed, notifier, {?vpwr0?}, {?vgnd0?}); 
    
    wire AWAKE;
    wire COND0;
    wire COND1;
    wire CONDB;
    assign AWAKE = ({?vpwr0?} === 1'b1); 
    assign COND0 = (AWAKE && (RESETB_delayed === 1'b1)); 
    assign COND1 = (AWAKE && (SETB_delayed === 1'b1)); 
    assign CONDB = (COND0 & COND1); 

    specify
        (negedge {?reset_b?} => ({?q?} +: {?reset_b?})) = 0:0:0;        // delay is tfall
        (negedge {?reset_b?} => ({?q_n?} -: {?reset_b?})) = 0:0:0;      // delay is tris

        ({?set_b?} => ({?q?} -: {?set_b?})) = (0:0:0, 0:0:0);           // delay is tris , tfall
        ({?set_b?} => ({?q_n?} +: {?set_b?})) = (0:0:0, 0:0:0);         // delay is tris , tfall

        (negedge {?clk_n?} => ({?q?} +: {?d?})) = (0:0:0, 0:0:0);       // delays are tris , tfall
        (negedge {?clk_n?} => ({?q_n?} -: {?d?})) = (0:0:0, 0:0:0);     // delays are tris , tfall
        
        $recrem (posedge {?set_b?}, negedge {?clk_n?}, 0:0:0, 0:0:0, notifier, COND0, COND0, SETB_delayed, CLKN_delayed);
        $recrem (posedge {?reset_b?}, negedge {?clk_n?}, 0:0:0, 0:0:0, notifier, COND1, COND1, RESETB_delayed, CLKN_delayed);
        
        $setuphold (negedge {?clk_n?}, posedge {?d?}, 0:0:0, 0:0:0, notifier, CONDB, CONDB, CLKN_delayed, D_delayed);
        $setuphold (negedge {?clk_n?}, negedge {?d?}, 0:0:0, 0:0:0, notifier, CONDB, CONDB, CLKN_delayed, D_delayed);

        $setuphold (posedge {?set_b?}, posedge {?reset_b?}, 0:0:0, 0:0:0, notifier, AWAKE, AWAKE, SETB_delayed, RESETB_delayed);
        $setuphold (posedge {?reset_b?}, posedge {?set_b?}, 0:0:0, 0:0:0, notifier, AWAKE, AWAKE, RESETB_delayed , SETB_delayed);

        $width (negedge {?clk_n?} &&& CONDB, 1.0:1.0:1.0, 0, notifier); 
        $width (posedge {?clk_n?} &&& CONDB, 1.0:1.0:1.0, 0, notifier); 
        $width (negedge {?set_b?} &&& AWAKE, 1.0:1.0:1.0, 0, notifier); 
        $width (negedge {?reset_b?} &&& AWAKE, 1.0:1.0:1.0, 0, notifier); 

    endspecify
    `endif


    buf ({?q?}, buf_Q); 
    not ({?q_n?}, buf_Q); 


endmodule
`endcelldefine

