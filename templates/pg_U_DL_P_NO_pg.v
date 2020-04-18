{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	G
		in[2]	:	NOTIFIER
		in[3]	:	VPWR
		in[4]	:	VGND
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?});    
    output {? out[0] ?}; 
    reg    {? out[0] ?};                               
    input  {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?};       
// FUNCTION : DLATCH, GATED  STANDARD DRIVE / ACTIVE HIGH ( {? out[0] ?} OUTPUT UDP )
//
// removing duplicated lines, allow JCWR changes


   table
     //  {? in[0] ?}       {? in[1] ?}    {? in[2] ?}  {? in[3] ?} {? in[4] ?}  : Qtn :   Qtn+1

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
