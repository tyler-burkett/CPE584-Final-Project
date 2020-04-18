{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	CP
		in[2]	:	R
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?});
    output {? out[0] ?};  
    input  {? in[0] ?}, {? in[1] ?}, {? in[2] ?};
    reg    {? out[0] ?}; 
    
// FUNCTION :  POSITIVE EDGE TRIGGERED {? in[0] ?} FLIP-FLOP WITH ACTIVE HIGH
//             ASYNCHRONOUS CLEAR ( {? out[0] ?} OUTPUT UDP ).

    table
 
    //  {? in[0] ?}  {? in[1] ?}   {? in[2] ?}    : Qt : Qt+1
        *  b    0    : ?  :  -  ; // data event, hold unless {? in[1] ?}==x

        ?  (?0) 0    : ?  :  -  ; // {? in[1] ?} => 0, hold

        ?  b    (?0) : ?  :  -  ; // {? in[2] ?} => 0, hold unless {? in[1] ?}==x
        ?  ?    1    : ?  :  0  ; // async reset

        0  r    ?    : ?  :  0  ; // clock data on {? in[1] ?}
        1  r    0    : ?  :  1  ; // clock data on {? in[1] ?}

        0  (x1) ?    : 0  :  0  ; // possible {? in[1] ?}, hold when {? in[0] ?}=={? out[0] ?}==0
        1  (x1) 0    : 1  :  1  ; // possible {? in[1] ?}, hold when {? in[0] ?}=={? out[0] ?}==1

        0  x    ?    : 0  :  0  ; // unkown {? in[1] ?}, hold when {? in[0] ?}=={? out[0] ?}==0
        1  x    0    : 1  :  1  ; // unkown {? in[1] ?}, hold when {? in[0] ?}=={? out[0] ?}==1

        ?  b    (?x) : 0  :  0  ; // {? in[2] ?}=>x, hold when {? out[0] ?}==0 unless {? in[1] ?}==x

    endtable
endprimitive
