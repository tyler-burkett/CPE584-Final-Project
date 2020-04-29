primitive scs8hd_pg_U_MUX_2_1  (X, A0, A1, S);
    output X;
    input A0, A1, S;

// FUNCTION :  TWO TO ONE MULTIPLEXER

    table
    //  A0  A1  S   :   X
        0   0   ?   :   0 ;
        1   1   ?   :   1 ;
        
        0   ?   0   :   0 ;
        1   ?   0   :   1 ;

        ?   0   1   :   0 ;
        ?   1   1   :   1 ;
        
    endtable
endprimitive    
