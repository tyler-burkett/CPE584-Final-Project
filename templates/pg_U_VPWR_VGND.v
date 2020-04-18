{#
	DESCRIPTION
		
	PARAMETER MAPPING
		in[0]	:	UDP_IN
		in[1]	:	VPWR
		in[2]	:	VGND
		out[0]	:	UDP_OUT
-#}


{? header ?}


primitive {? lib ?}_{? name ?} ( {? out[0] ?}, {? in[0] ?}, {? in[1] ?}, {? in[2] ?});
  output {? out[0] ?};
  input {? in[0] ?}, {? in[1] ?}, {? in[2] ?};

// {? out[0] ?}:=x when {? in[1] ?}!=1 or {? in[2] ?}!=0
// {? out[0] ?}:={? in[0] ?} when {? in[1] ?}==1 and {? in[2] ?}==0

  table
//   in  {? in[1] ?} {? in[2] ?}  : out
      0    1    0   : 0 ;
      1    1    0   : 1 ;
      x    1    0   : x ;
      ?    0    0   : x ;
      ?    1    1   : x ;
      ?    x    0   : x ;
      ?    1    x   : x ;
  endtable
endprimitive
