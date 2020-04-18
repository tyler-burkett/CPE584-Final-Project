{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	UDP_IN
		in[1]	:	VPWR
		out[0]	:	UDP_OUT
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ( {? out[0] ?}, {? in[0] ?}, {? in[1] ?} );
  output {? out[0] ?};
  input {? in[0] ?}, {? in[1] ?};

// {? out[0] ?}:=x when {? in[1] ?}!=1
// {? out[0] ?}:={? in[0] ?} when {? in[1] ?}==1

  table
//  X_int {? in[1] ?} : X
      0    1   : 0 ;
      1    1   : 1 ;
      ?    0   : x ;
      ?    x   : x ;
  endtable
endprimitive
