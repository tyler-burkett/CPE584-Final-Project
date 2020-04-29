primitive scs8hd_pg_U_DFB_SETDOM_NO_pg (Q, S, R, CK, D, NOTIFIER, VPWR, VGND);
   // same as scs8hd_pg_U_DFB udp but the set line is dominant.
output Q;
input  S, R, CK, D, NOTIFIER, VPWR, VGND;
reg    Q;
  table
    0  1   b    ?  ?  1  0  :  ?  :  0; // Asserting reset
    0  *   ?    ?  ?  1  0  :  0  :  0; // Changing reset
    1  ?   b    ?  ?  1  0  :  ?  :  1; // Asserting set  (dominates reset)
    *  0   ?    ?  ?  1  0  :  1  :  1; // Changing set
    1  ?   n    ?  ?  1  0  :  1  :  1; // JCWR
    ?  1   n    ?  ?  1  0  :  0  :  0; // JCWR
    x  ?   n    ?  ?  1  0  :  1  :  1; // JCWR
    ?  x   n    ?  ?  1  0  :  0  :  0; // JCWR
    0  ?   (01) 0  ?  1  0  :  ?  :  0; // rising clock
    ?  0   (01) 1  ?  1  0  :  ?  :  1; // rising clock 
    0  ?   p    0  ?  1  0  :  0  :  0; // potential rising clock
    ?  0   p    1  ?  1  0  :  1  :  1; // potential rising clock
    0  ?   x    0  ?  1  0  :  1  :  x; // JCWR
    ?  0   x    1  ?  1  0  :  0  :  x; // JCWR
    0  0   n    ?  ?  1  0  :  ?  :  -; // Clock falling register output does not change
    0  0   ?    *  ?  1  0  :  ?  :  -; // Changing Data
`ifdef functional
    ?  ?   ?    ?  *  1  0  :  ?  :  -; // go to - on notify
`else
    ?  ?   ?    ?  *  1  0  :  ?  :  X; // go to X on notify
`endif
    ?  ?   ?    ?  ?  *  0  :  ?  :  X; // any change on vpwr
    ?  ?   ?    ?  ?  ?  *  :  ?  :  X; // any change on vgnd

  endtable
endprimitive
