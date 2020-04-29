primitive scs8hd_lpflow_pg_U_DL_P (Q, D, G);
//
// FUNCTION : DLATCH, GATED  STANDARD DRIVE / ACTIVE HIGH ( Q OUTPUT UDP )
//

    output Q; 
    reg    Q;                               
    input  D, G;

   table
     //  D      G    : Qt  :   Qt+1

         ?      0    :  ?  :    -   ;  // hold

         0      1    :  ?  :    0   ;  // pass 0
         1      1    :  ?  :    1   ;  // pass 1

         0      x    :  0  :    0   ;  // reduce pessimism
         1      x    :  1  :    1   ;  // reduce pessimism
                                       
   endtable

endprimitive
