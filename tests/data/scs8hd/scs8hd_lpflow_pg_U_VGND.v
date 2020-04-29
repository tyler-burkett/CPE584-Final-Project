primitive scs8hd_lpflow_pg_U_VGND ( UDP_OUT, UDP_IN, VGND);
  output UDP_OUT;
  input UDP_IN, VGND;

// UDP_OUT:=x when VGND!=0
// UDP_OUT:=UDP_IN when VGND==0

  table
//   in  VGND  : out
      0    0   : 0 ;
      1    0   : 1 ;
      x    0   : x ;
      ?    1   : x ;
      ?    x   : x ;
  endtable
endprimitive
