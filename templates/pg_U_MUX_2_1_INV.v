{#
	DESCRIPTION
		2-1 multiplexer with inverted output (UDP)
	PARAMETER MAPPING
		in[0]	:	A0
		in[1]	:	A1
		in[2]	:	S
		out[0]	:	Y
-#}


{? header ?}


primitive {? lib ?}_{? name ?}  ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?});

    input {? in[0] ?}, {? in[1] ?}, {? in[2] ?};
    output {? out[0] ?};
   
// FUNCTION :  TWO TO ONE MULTIPLEXER  WITH INVERTING OUTPUT

    table
//   {? in[0] ?}  {? in[1] ?}  {? in[2] ?}  : {? out[0] ?}
  
     0   ?   0  : 1 ;
     1   ?   0  : 0 ;

     ?   0   1  : 1 ;
     ?   1   1  : 0 ;

     0   0   ?  : 1 ;
     1   1   ?  : 0 ;

     endtable
endprimitive
