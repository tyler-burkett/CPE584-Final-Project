{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	G
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?});
//
// FUNCTION : DLATCH, GATED  STANDARD DRIVE / ACTIVE HIGH ( {? out[0] ?} OUTPUT UDP )
//

    output {? out[0] ?}; 
    reg    {? out[0] ?};                               
    input  {? in[0] ?}, {? in[1] ?};

   table
     //  {? in[0] ?}      {? in[1] ?}    : Qt  :   Qt+1

         ?      0    :  ?  :    -   ;  // hold

         0      1    :  ?  :    0   ;  // pass 0
         1      1    :  ?  :    1   ;  // pass 1

         0      x    :  0  :    0   ;  // reduce pessimism
         1      x    :  1  :    1   ;  // reduce pessimism
                                       
   endtable

endprimitive
