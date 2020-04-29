primitive scs8hd_pg_U_VPWR ( UDP_OUT, UDP_IN, VPWR );
  output UDP_OUT;
  input UDP_IN, VPWR;

// UDP_OUT:=x when VPWR!=1
// UDP_OUT:=UDP_IN when VPWR==1

  table
//  X_int VPWR : X
      0    1   : 0 ;
      1    1   : 1 ;
      ?    0   : x ;
      ?    x   : x ;
  endtable
endprimitive
