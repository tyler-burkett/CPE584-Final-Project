{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	D
		in[1]	:	CP
		in[2]	:	NOTIFIER
		in[3]	:	VPWR
		in[4]	:	VGND
		out[0]	:	Q
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ({? out[0] ?}, {? in[0] ?}, {? in[1] ?} , {? in[2] ?}, {? in[3] ?}, {? in[4] ?});    
    output {? out[0] ?};  
    input  {? in[0] ?}, {? in[1] ?}, {? in[2] ?}, {? in[3] ?}, {? in[4] ?};
    reg    {? out[0] ?};  

// FUNCTION :  POSITIVE EDGE TRIGGERED {? in[0] ?} FLIP-FLOP ( {? out[0] ?} OUTPUT UDP ).


    table
 
    //  {? in[0] ?}   {? in[1] ?}           {? in[2] ?} {? in[3] ?} {? in[4] ?} :   Qt  :   Qt+1

        1   (01)            ?      1    0   :   ?   :   1;  // clocked data
        0   (01)            ?      1    0   :   ?   :   0;
                                                           
        1   (x1)            ?      1    0   :   1   :   1;  // reducing pessimism
        0   (x1)            ?      1    0   :   0   :   0;                          
        1   (0x)            ?      1    0   :   1   :   1;  
        0   (0x)            ?      1    0   :   0   :   0; 
        
        0    x              ?      1    0   :   0   :   0; // Hold when CLK=X and {? in[0] ?}={? out[0] ?}
        1    x              ?      1    0   :   1   :   1; // Hold when CLK=X and {? in[0] ?}={? out[0] ?}
        ?   (?0)            ?      1    0   :   ?   :   -;  

        *    b              ?      1    0   :   ?   :   -;  // ignore edges on data

`ifdef functional
        ?    ?              *      1    0   :   ?   :   -;
`else
        ?    ?              *      1    0   :   ?   :   x;
`endif

        ?    ?              ?      *    ?   :   ?   :   x;  // any change on {? vpwr[0] ?}
        ?    ?              ?      ?    *   :   ?   :   x;  // any change on {? vgnd[0] ?}
    endtable
endprimitive
