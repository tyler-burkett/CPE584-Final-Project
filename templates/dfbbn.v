{#
    DESCRIPTION
        Neg-edge D-flip flop with async reset and async set (q and qb)
    PARAMETER MAPPING
        in[0]   :   D
        in[1]   :   CLKN
        in[2]   :   SETB
        in[3]   :   RESETB
        out[0]  :   Q
        out[1]  :   QN
-#}


{?header?}


`celldefine
`timescale {?timescale?}


module {?lib?}_{?name?}_{?drive?} (
output {?out[0]?},
output {?out[1]?},
input {?in[0]?},
input {?in[1]?},
input {?in[2]?},
input {?in[3]?}

`ifdef SC_USE_PG_PIN
, input {?vpwr[0]?}
, input {?vgnd[0]?}
, input {?vpb[0]?}
, input {?vnb[0]?}
`endif

);
    
    `ifdef functional
    `else
    `ifdef SC_USE_PG_PIN
    `else
    supply1 {?vpwr[0]?};
    supply0 {?vgnd[0]?};
    supply1 {?vpb[0]?};
    supply0 {?vnb[0]?};
    `endif
    `endif


    wire reset;
    wire set;
    wire clk;
    wire buf_Q;
    

    `ifdef functional
    not (reset, {?in[3]?}); 
    not (set, {?in[2]?}); 
    not (clk, {?in[1]?});

    `ifdef SC_USE_PG_PIN
    {?lib?}_pg_U_DFB_SETDOM_NO_pg #0.001 (buf_Q, set, reset, clk, {?in[0]?}, , {?vpwr[0]?}, {?vgnd[0]?});
    `else
    {?lib?}_pg_U_DFB_SETDOM #0.001 (buf_Q, set, reset, clk, {?in[0]?});
    `endif


    `else
    wire CLKN_delayed;
    wire RESETB_delayed;
    wire SETB_delayed;
    reg notifier; 
    
    not (reset, RESETB_delayed); 
    not (set, SETB_delayed); 
    not (clk, CLKN_delayed); 
    {?lib?}_pg_U_DFB_SETDOM_NO_pg (buf_Q, set, reset, clk, D_delayed, notifier, {?vpwr[0]?}, {?vgnd[0]?}); 
    
    wire AWAKE;
    wire COND0;
    wire COND1;
    wire CONDB;
    assign AWAKE = ({?vpwr[0]?} === 1'b1); 
    assign COND0 = (AWAKE && (RESETB_delayed === 1'b1)); 
    assign COND1 = (AWAKE && (SETB_delayed === 1'b1)); 
    assign CONDB = (COND0 & COND1); 

    specify
        (negedge {?in[3]?} => ({?out[0]?} +: {?in[3]?})) = 0:0:0;        // delay is tfall
        (negedge {?in[3]?} => ({?out[1]?} -: {?in[3]?})) = 0:0:0;      // delay is tris

        ({?in[2]?} => ({?out[0]?} -: {?in[2]?})) = (0:0:0, 0:0:0);           // delay is tris , tfall
        ({?in[2]?} => ({?out[1]?} +: {?in[2]?})) = (0:0:0, 0:0:0);         // delay is tris , tfall

        (negedge {?in[1]?} => ({?out[0]?} +: {?in[0]?})) = (0:0:0, 0:0:0);       // delays are tris , tfall
        (negedge {?in[1]?} => ({?out[1]?} -: {?in[0]?})) = (0:0:0, 0:0:0);     // delays are tris , tfall
        
        $recrem (posedge {?in[2]?}, negedge {?in[1]?}, 0:0:0, 0:0:0, notifier, COND0, COND0, SETB_delayed, CLKN_delayed);
        $recrem (posedge {?in[3]?}, negedge {?in[1]?}, 0:0:0, 0:0:0, notifier, COND1, COND1, RESETB_delayed, CLKN_delayed);
        
        $setuphold (negedge {?in[1]?}, posedge {?in[0]?}, 0:0:0, 0:0:0, notifier, CONDB, CONDB, CLKN_delayed, D_delayed);
        $setuphold (negedge {?in[1]?}, negedge {?in[0]?}, 0:0:0, 0:0:0, notifier, CONDB, CONDB, CLKN_delayed, D_delayed);

        $setuphold (posedge {?in[2]?}, posedge {?in[3]?}, 0:0:0, 0:0:0, notifier, AWAKE, AWAKE, SETB_delayed, RESETB_delayed);
        $setuphold (posedge {?in[3]?}, posedge {?in[2]?}, 0:0:0, 0:0:0, notifier, AWAKE, AWAKE, RESETB_delayed , SETB_delayed);

        $width (negedge {?in[1]?} &&& CONDB, 1.0:1.0:1.0, 0, notifier); 
        $width (posedge {?in[1]?} &&& CONDB, 1.0:1.0:1.0, 0, notifier); 
        $width (negedge {?in[2]?} &&& AWAKE, 1.0:1.0:1.0, 0, notifier); 
        $width (negedge {?in[3]?} &&& AWAKE, 1.0:1.0:1.0, 0, notifier); 

    endspecify
    `endif


    buf ({?out[0]?}, buf_Q); 
    not ({?out[1]?}, buf_Q); 


endmodule
`endcelldefine

