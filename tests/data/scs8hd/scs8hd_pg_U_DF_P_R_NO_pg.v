primitive scs8hd_pg_U_DF_P_R_NO_pg (Q, D, CP, R, NOTIFIER, VPWR, VGND);
    output Q;  
    input  D, CP, R, NOTIFIER, VPWR, VGND;
    reg    Q; 
    
// FUNCTION :  POSITIVE EDGE TRIGGERED D FLIP-FLOP WITH ACTIVE HIGH
//             ASYNCHRONOUS CLEAR ( Q OUTPUT UDP ).

    table
 
    //  D  CP   R    NOTIFIER  VPWR VGND : Qt : Qt+1
        *  b    0     ?     1    0  : ?  :  -  ; // data event, hold unless CP==x

        ?  (?0) 0     ?     1    0  : ?  :  -  ; // CP => 0, hold

        ?  b    (?0)  ?     1    0  : ?  :  -  ; // R => 0, hold unless CP==x
        ?  ?    1     ?     1    0  : ?  :  0  ; // async reset

        0  r    ?     ?     1    0  : ?  :  0  ; // clock data on CP
        1  r    0     ?     1    0  : ?  :  1  ; // clock data on CP

        0  (x1) ?     ?     1    0  : 0  :  0  ; // possible CP, hold when D==Q==0
        1  (x1) 0     ?     1    0  : 1  :  1  ; // possible CP, hold when D==Q==1

        0  x    ?     ?     1    0  : 0  :  0  ; // unkown CP, hold when D==Q==0
        1  x    0     ?     1    0  : 1  :  1  ; // unkown CP, hold when D==Q==1

        ?  b    (?x)  ?     1    0  : 0  :  0  ; // R=>x, hold when Q==0 unless CP==x

        ?  (?0) x     ?     1    0  : 0  :  0  ; //JCWR

`ifdef functional
        ?  ?    ?     *     1    0  : ?  :  -  ; // Q => - on any change on notifier
`else
        ?  ?    ?     *     1    0  : ?  :  x  ; // Q => X on any change on notifier
`endif

        ?  ?    ?     ?     *    ?  : ?  :  x  ; // Q => X on any change on vpwr
        ?  ?    ?     ?     ?    *  : ?  :  x  ; // Q => X on any change on vgnd

    endtable
endprimitive
