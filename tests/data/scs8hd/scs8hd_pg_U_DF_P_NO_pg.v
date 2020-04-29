primitive scs8hd_pg_U_DF_P_NO_pg (Q, D, CP , NOTIFIER, VPWR, VGND);    
    output Q;  
    input  D, CP, NOTIFIER, VPWR, VGND;
    reg    Q;  

// FUNCTION :  POSITIVE EDGE TRIGGERED D FLIP-FLOP ( Q OUTPUT UDP ).


    table
 
    //  D   CP           NOTIFIER VPWR VGND :   Qt  :   Qt+1

        1   (01)            ?      1    0   :   ?   :   1;  // clocked data
        0   (01)            ?      1    0   :   ?   :   0;
                                                           
        1   (x1)            ?      1    0   :   1   :   1;  // reducing pessimism
        0   (x1)            ?      1    0   :   0   :   0;                          
        1   (0x)            ?      1    0   :   1   :   1;  
        0   (0x)            ?      1    0   :   0   :   0; 
        
        0    x              ?      1    0   :   0   :   0; // Hold when CLK=X and D=Q
        1    x              ?      1    0   :   1   :   1; // Hold when CLK=X and D=Q
        ?   (?0)            ?      1    0   :   ?   :   -;  

        *    b              ?      1    0   :   ?   :   -;  // ignore edges on data

`ifdef functional
        ?    ?              *      1    0   :   ?   :   -;
`else
        ?    ?              *      1    0   :   ?   :   x;
`endif

        ?    ?              ?      *    ?   :   ?   :   x;  // any change on vpwr
        ?    ?              ?      ?    *   :   ?   :   x;  // any change on vgnd
    endtable
endprimitive
