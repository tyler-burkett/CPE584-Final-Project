{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	CP
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?});
    output {? out[0] ?};  
    input  {? in[0] ?}, {? in[1] ?};
    reg    {? out[0] ?};  
// FUNCTION :  POSITIVE EDGE TRIGGERED {? in[0] ?} FLIP-FLOP ( {? out[0] ?} OUTPUT UDP ).
    table
//      {? in[0] ?}   {? in[1] ?}        :   Qt  :   Qt+1

        1   (01)      :   ?   :   1;  // clocked data
        0   (01)      :   ?   :   0;

        1   (x1)      :   1   :   1;  // reducing pessimism
        0   (x1)      :   0   :   0;                          
        1   (0x)      :   1   :   1;  
        0   (0x)      :   0   :   0; 

        ?   (1x)      :   ?   :   -;  // no change on falling edge 
        ?   (?0)      :   ?   :   -;  

        *    ?        :   ?   :   -;  // ignore edges on data
    endtable
endprimitive
