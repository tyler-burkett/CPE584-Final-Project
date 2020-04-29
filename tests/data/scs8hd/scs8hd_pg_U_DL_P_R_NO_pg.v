primitive scs8hd_pg_U_DL_P_R_NO_pg (Q, D, G, R, NOTIFIER, VPWR, VGND);    
    output Q; 
    reg    Q;                               
    input  D, G, R, NOTIFIER, VPWR, VGND;
// FUNCTION : D-LATCH, GATED  CLEAR DIRECT /GATE ACTIVE HIGH ( Q OUTPUT UDP ) 
//
// remove duplicated lines, allow JCWR edits
//
   table
     //  D       G      R     NOTIFIER  VPWR, VGND  : Qt  :   Qt+1
         *       0      0      ?          1     0   :  ?  :    -   ;

         ?       ?      1      ?          1     0   :  ?  :    0   ; // asynchro clear

         ?      (?0)    0      ?          1     0   :  ?  :    -   ; // Changed R=? to R=0 ; jek 08/14/06/
         ?      (1x)    0      ?          1     0   :  ?  :    -   ; // Changed R=? to R=0 ; jek 08/14/06

         0      (0x)    0      ?          1     0   :  0  :    0   ;
         1      (0x)    0      ?          1     0   :  1  :    1   ;
         0      (x1)    0      ?          1     0   :  ?  :    0   ;
         1      (x1)    0      ?          1     0   :  ?  :    1   ;

        (?0)     1      0      ?          1     0   :  ?  :    0   ;
        (?1)     1      0      ?          1     0   :  ?  :    1   ; 
         0      (01)    0      ?          1     0   :  ?  :    0   ;
         1      (01)    0      ?          1     0   :  ?  :    1   ; 

         ?       0     (?x)    ?          1     0   :  0  :    0   ;   // Reducing pessimism.//AB
         *       0      x      ?          1     0   :  0  :    0   ;   // Reducing pessimism//AB

         0      (?1)    x      ?          1     0   :  ?  :    0   ;   // Reducing pessimism.
        (?0)     1      x      ?          1     0   :  ?  :    0   ;   // Reducing pessimism.
         0       1     (?x)    ?          1     0   :  ?  :    0   ;   // Reducing pessimism.//AB

         ?       0     (?0)    ?          1     0   :  ?  :    -   ;   // ignore edge on clear
         0       1     (?0)    ?          1     0   :  ?  :    0   ;   // pessimism .
         1       1     (?0)    ?          1     0   :  ?  :    1   ;  

        (?1)     x      0      ?          1     0   :  1  :    1   ;   // Reducing pessimism.
        (?0)     x      0      ?          1     0   :  0  :    0   ;   // Reducing pessimism.
         
`ifdef functional
         ?       ?      ?      *          1     0   :  ?  :    -   ;
`else
         ?       ?      ?      *          1     0   :  ?  :    x   ;
`endif

         0       1      0      ?        (?1)    0   :  ?  :    0   ;  //JCWR
         1       1      0      ?        (?1)    0   :  ?  :    1   ;  //JCWR

         0       1      0      ?          1   (?0)  :  ?  :    0   ;  //JCWR
         1       1      0      ?          1   (?0)  :  ?  :    1   ;  //JCWR

   endtable

endprimitive
