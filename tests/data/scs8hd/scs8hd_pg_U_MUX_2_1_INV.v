primitive scs8hd_pg_U_MUX_2_1_INV  (Y, A0, A1, S);

    input A0, A1, S;
    output Y;
   
// FUNCTION :  TWO TO ONE MULTIPLEXER  WITH INVERTING OUTPUT

    table
//   A0  A1  S  : Y
  
     0   ?   0  : 1 ;
     1   ?   0  : 0 ;

     ?   0   1  : 1 ;
     ?   1   1  : 0 ;

     0   0   ?  : 1 ;
     1   1   ?  : 0 ;

     endtable
endprimitive
