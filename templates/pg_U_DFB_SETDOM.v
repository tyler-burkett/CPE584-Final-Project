{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	S
		in[1]	:	R
		in[2]	:	CK
		in[3]	:	D
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?});
   // same as {? lib ?}_U_DFB udp but the set line is dominant.
output {? out[0] ?};
input  {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?};
reg    {? out[0] ?};
  table
    0  1   ?    ?  :  ?  :  0; // Asserting reset
    0  *   ?    ?  :  0  :  0; // Changing reset
    1  ?   ?    ?  :  ?  :  1; // Asserting set (dominates reset)
    *  0   ?    ?  :  1  :  1; // Changing set
    0  ?   (01) 0  :  ?  :  0; // rising clock
    ?  0   (01) 1  :  ?  :  1; // rising clock 
    0  ?   p    0  :  0  :  0; // potential rising clock
    ?  0   p    1  :  1  :  1; // potential rising clock
    0  0   n    ?  :  ?  :  -; // Clock falling register output does not change
    0  0   ?    *  :  ?  :  -; // Changing Data
 
  endtable
endprimitive
// bnb mar4,2003 - this is a modification of the verplex FF udp
// that was edited to work with tetramax and compiles
// with verilog-xl with no warnings
