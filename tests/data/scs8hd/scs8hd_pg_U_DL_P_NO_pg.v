primitive scs8hd_pg_U_DL_P_NO_pg (Q, D, G, NOTIFIER, VPWR, VGND);    
    output Q; 
    reg    Q;                               
    input  D, G, NOTIFIER, VPWR, VGND;       
// FUNCTION : DLATCH, GATED  STANDARD DRIVE / ACTIVE HIGH ( Q OUTPUT UDP )
//
// removing duplicated lines, allow JCWR changes


   table
     //  D       G    NOTIFIER  VPWR VGND  : Qtn :   Qtn+1

         *       0      ?         1    0   :  ?  :    -   ;

         ?      (?0)    ?         1    0   :  ?  :    -   ;
         ?      (1x)    ?         1    0   :  ?  :    -   ;

         0      (0x)    ?         1    0   :  0  :    0   ;
         1      (0x)    ?         1    0   :  1  :    1   ;
         0      (x1)    ?         1    0   :  ?  :    0   ;
         1      (x1)    ?         1    0   :  ?  :    1   ;

        (?0)     1      ?         1    0   :  ?  :    0   ;
        (?1)     1      ?         1    0   :  ?  :    1   ; 
         0      (01)    ?         1    0   :  ?  :    0   ;
         1      (01)    ?         1    0   :  ?  :    1   ; 

        (?1)     x      ?         1    0   :  1  :    1   ;    // Reducing pessimism.
        (?0)     x      ?         1    0   :  0  :    0   ; 
         
`ifdef functional
         ?       ?      *         1    0   :  ?  :    -   ;
`else
         ?       ?      *         1    0   :  ?  :    x   ;
`endif

         0       1      ?       (?1)   0   :  ?  :    0   ;  //JCWR
         1       1      ?       (?1)   0   :  ?  :    1   ;  //JCWR

         0       1      ?         1  (?0)  :  ?  :    0   ;  //JCWR
         1       1      ?         1  (?0)  :  ?  :    1   ;  //JCWR
   endtable

endprimitive
