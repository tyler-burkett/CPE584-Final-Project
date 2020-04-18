{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	G
		in[2]	:	R
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?});
//
// FUNCTION : {? in[0] ?}-LATCH, GATED  CLEAR DIRECT /GATE ACTIVE HIGH ( {? out[0] ?} OUTPUT UDP ) 
//

    output {? out[0] ?}; 
    reg    {? out[0] ?};                               
    input  {? in[0] ?},
           {? in[1] ?},          // Gate- active high
           {? in[2] ?};          // Clear-active high

    table
     //  {? in[0] ?}      {? in[1] ?}      {? in[2] ?}       : Qt  :   Qt+1

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
