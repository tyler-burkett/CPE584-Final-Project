{#
	DESCRIPTION
		2-1 multiplexer (UDP)
	PARAMETER MAPPING
		in[0]	:	A0
		in[1]	:	A1
		in[2]	:	S
		out[0]	:	X
-#}


{? header ?}


primitive {? lib ?}_{? name ?}  ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?});
    output {? out[0] ?};
    input {? in[0] ?}, {? in[1] ?}, {? in[2] ?};

// FUNCTION :  TWO TO ONE MULTIPLEXER

    table
    //  {? in[0] ?}  {? in[1] ?}  {? in[2] ?}   :   {? out[0] ?}
        0   0   ?   :   0 ;
        1   1   ?   :   1 ;
        
        0   ?   0   :   0 ;
        1   ?   0   :   1 ;

        ?   0   1   :   0 ;
        ?   1   1   :   1 ;
        
    endtable
endprimitive    
