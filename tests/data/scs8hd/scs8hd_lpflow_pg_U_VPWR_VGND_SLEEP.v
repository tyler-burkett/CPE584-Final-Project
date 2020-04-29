primitive scs8hd_lpflow_pg_U_VPWR_VGND_SLEEP ( UDP_OUT, UDP_IN, VPWR, VGND, SLEEP);
  output UDP_OUT;
  input UDP_IN, VPWR, VGND, SLEEP;

// UDP_OUT:=x when VPWR!=1 or VGND!=0
// UDP_OUT:=UDP_IN when VPWR==1 and VGND==0

  table
//   in  VPWR VGND  SLEEP   : out
      0    1    0     ?     : 0 ;
      1    1    0     0     : 1 ;
      x    1    0     0     : x ;
      ?    0    0     0     : x ;
      ?    1    1     0     : x ;
      ?    x    0     0     : x ;
      ?    1    x     0     : x ;
      ?    ?    0     1     : 0 ;
      ?    ?    1     1     : x ;
      ?    ?    x     1     : x ;
  endtable
endprimitive
