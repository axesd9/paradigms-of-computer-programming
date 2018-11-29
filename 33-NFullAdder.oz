declare
fun {GateMaker F}
   fun {$ Xs Ys}
      fun {GateLoop Xs Ys}
         case Xs#Ys of (X|Xr)#(Y|Yr) then
            {F X Y}|{GateLoop Xr Yr}
         else nil end
      end
   in
      thread {GateLoop Xs Ys} end
   end
end
AndG={GateMaker fun {$ X Y} X*Y end}
OrG={GateMaker fun {$ X Y} X+Y-X*Y end}
XorG={GateMaker fun {$ X Y} X+Y-2*X*Y end}
proc {FullAdder X Y Z C S}
   A B D E F
in
   A={AndG X Y}
   B={AndG Y Z}
   D={AndG X Z}
   F={OrG B D}
   C={OrG A F}
   E={XorG X Y}
   S={XorG Z E}
end
fun {NFullAdder S1 S2}
   case S1#S2
   of (X|S1r)#(Y|S2r) then
      Z=0|C
      C S
   in
      {FullAdder {Reverse X} {Reverse Y} Z C S}
      {Reverse S}#{List.last C}|thread {NFullAdder S1r S2r} end
   else nil end
end
local
   S1=[1 1 1 1 1]|[0 0 0 0 0]|[1 1 1 1 0]|_
   S2=[1 1 1 1 1]|[0 0 0 0 0]|[0 0 0 0 1]|_
in
   {Browse {NFullAdder S1 S2}}
end