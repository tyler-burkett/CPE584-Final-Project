primitive scs8hd_pg_U_DF_P_S (Q, D, CP, S);
    output Q;  
    input  D, CP, S;
    reg    Q; 
    
// FUNCTION :  POSITIVE EDGE TRIGGERED D FLIP-FLOP WITH ACTIVE HIGH
//             ASYNCHRONOUS SET ( Q OUTPUT UDP ).

    table
 
    //  D  CP   S    : Qt : Qt+1
        *  b    0    : ?  :  -  ; // data event, hold unless CP==x

        ?  (?0) 0    : ?  :  -  ; // CP => 0, hold

        ?  b    (?0) : ?  :  -  ; // S => 0, hold unless CP==x
        ?  ?    1    : ?  :  1  ; // async set

        0  r    0    : ?  :  0  ; // clock data on CP
        1  r    ?    : ?  :  1  ; // clock data on CP

        0  (x1) 0    : 0  :  0  ; // possible CP, hold when D==Q==0
        1  (x1) ?    : 1  :  1  ; // possible CP, hold when D==Q==1

        0  x    0    : 0  :  0  ; // unkown CP, hold when D==Q==0
        1  x    ?    : 1  :  1  ; // unkown CP, hold when D==Q==1

        ?  b    (?x) : 1  :  1  ; // S=>x, hold when Q==1 unless CP==x

    endtable
endprimitive
