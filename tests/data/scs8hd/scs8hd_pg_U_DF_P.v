primitive scs8hd_pg_U_DF_P (Q, D, CP);
    output Q;  
    input  D, CP;
    reg    Q;  
// FUNCTION :  POSITIVE EDGE TRIGGERED D FLIP-FLOP ( Q OUTPUT UDP ).
    table
//      D   CP        :   Qt  :   Qt+1

        1   (01)      :   ?   :   1;  // clocked data
        0   (01)      :   ?   :   0;

        1   (x1)      :   1   :   1;  // reducing pessimism
        0   (x1)      :   0   :   0;                          
        1   (0x)      :   1   :   1;  
        0   (0x)      :   0   :   0; 

        ?   (1x)      :   ?   :   -;  // no change on falling edge 
        ?   (?0)      :   ?   :   -;  

        *    ?        :   ?   :   -;  // ignore edges on data
    endtable
endprimitive
