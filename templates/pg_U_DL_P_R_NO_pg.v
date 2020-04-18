{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	G
		in[2]	:	R
		in[3]	:	NOTIFIER
		in[4]	:	VPWR
		in[5]	:	VGND
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?}, {? in[5] ?});    
    output {? out[0] ?}; 
    reg    {? out[0] ?};                               
    input  {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?}, {? in[5] ?};
// FUNCTION : {? in[0] ?}-LATCH, GATED  CLEAR DIRECT /GATE ACTIVE HIGH ( {? out[0] ?} OUTPUT UDP ) 
//
// remove duplicated lines, allow JCWR edits
//
   table
     //  {? in[0] ?}       {? in[1] ?}      {? in[2] ?}     {? in[3] ?}  {? in[4] ?}, {? in[5] ?}  : Qt  :   Qt+1
         *       0      0      ?          1     0   :  ?  :    -   ;

         ?       ?      1      ?          1     0   :  ?  :    0   ; // asynchro clear

         ?      (?0)    0      ?          1     0   :  ?  :    -   ; // Changed {? in[2] ?}=? to {? in[2] ?}=0 ; jek 08/14/06/
         ?      (1x)    0      ?          1     0   :  ?  :    -   ; // Changed {? in[2] ?}=? to {? in[2] ?}=0 ; jek 08/14/06

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
