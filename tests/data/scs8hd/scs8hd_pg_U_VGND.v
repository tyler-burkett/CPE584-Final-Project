primitive scs8hd_pg_U_VGND ( UDP_OUT, UDP_IN, VGND );
  output UDP_OUT;
  input UDP_IN, VGND;

// UDP_OUT:=x when VPWR!=1
// UDP_OUT:=UDP_IN when VPWR==1

  table
//  X_int VPWR : X
      0    0   : 0 ;
      1    0   : 1 ;
      ?    1   : x ;
      ?    x   : x ;
  endtable
endprimitive
