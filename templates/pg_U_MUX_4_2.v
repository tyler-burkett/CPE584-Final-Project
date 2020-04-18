{#
	DESCRIPTION
		4-1 multiplexer with 2 select controls (UDP)
	PARAMETER MAPPING
		in[0]	:	A0
		in[1]	:	A1
		in[2]	:	A2
		in[3]	:	A3
		in[4]	:	S0
		in[5]	:	S1
		out[0]	:	X
-#}


{? header ?}


primitive {? lib ?}_{? name ?}  ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?}, {? in[5] ?});

    input {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?}, {? in[5] ?};
    output {? out[0] ?};
   
// FUNCTION :  FOUR TO ONE MULTIPLEXER WITH 2 SELECT CONTROLS

    table

//   {? in[0] ?}  {? in[1] ?}  {? in[2] ?} {? in[3] ?}  {? in[4] ?}  {? in[5] ?} : {? out[0] ?}
                       
     0   ?   ?  ?    0  0  : 0 ; 
     1   ?   ?  ?    0  0  : 1 ; 
                                 
     ?   0   ?  ?    1  0  : 0 ; 
     ?   1   ?  ?    1  0  : 1 ; 
                                 
     ?   ?   0  ?    0  1  : 0 ; 
     ?   ?   1  ?    0  1  : 1 ; 
                                 
     ?   ?   ?  0    1  1  : 0 ; 
     ?   ?   ?  1    1  1  : 1 ; 
                                 

     0   0   0   0   ?  ?  : 0 ; 
                     
     1   1   1   1   ?  ?  : 1 ;

     0   0   ?   ?   ?  0  : 0 ;    
     1   1   ?   ?   ?  0  : 1 ; 

     ?   ?   0   0   ?  1  : 0 ; 
     ?   ?   1   1   ?  1  : 1 ; 

     0   ?   0   ?   0  ?  : 0 ; 
     1   ?   1   ?   0  ?  : 1 ; 

     ?   0   ?   0   1  ?  : 0 ; 
     ?   1   ?   1   1  ?  : 1 ; 

     endtable
endprimitive
