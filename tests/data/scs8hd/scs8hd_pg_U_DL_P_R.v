primitive scs8hd_pg_U_DL_P_R (Q, D, G, R);
//
// FUNCTION : D-LATCH, GATED  CLEAR DIRECT /GATE ACTIVE HIGH ( Q OUTPUT UDP ) 
//

    output Q; 
    reg    Q;                               
    input  D,
           G,          // Gate- active high
           R;          // Clear-active high

    table
     //  D      G      R       : Qt  :   Qt+1

         ?      0      0       :  ?  :    -   ;     // hold

         0      1      0       :  ?  :    0   ;     // pass 0
         1      1      0       :  ?  :    1   ;     // pass 1

         ?      ?      1       :  ?  :    0   ;     // async reset

         0      1      ?       :  ?  :    0   ;     // reduce pessimism
         0      x      0       :  0  :    0   ;     // reduce pessimism
         1      x      0       :  1  :    1   ;     // reduce pessimism
         ?      0      x       :  0  :    0   ;     // reduce pessimism
         0      x      x       :  0  :    0   ;     // reduce pessimism
       
      endtable

endprimitive
