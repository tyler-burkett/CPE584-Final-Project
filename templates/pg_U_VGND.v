{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	UDP_IN
		in[1]	:	VGND
		out[0]	:	UDP_OUT
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ( {? out[0] ?}, {? in[0] ?}, {? in[1] ?} );
  output {? out[0] ?};
  input {? in[0] ?}, {? in[1] ?};

// {? out[0] ?}:=x when VPWR!=1
// {? out[0] ?}:={? in[0] ?} when VPWR==1

  table
//  X_int VPWR : X
      0    0   : 0 ;
      1    0   : 1 ;
      ?    1   : x ;
      ?    x   : x ;
  endtable
endprimitive
