declare
class List
   attr list
   meth init(L) list:=L end
   meth isEven(I $) {Nth @list I+1} mod 2==0 end
   meth get(I $) {Nth @list I+1} end
   meth getList($) @list end
end
fun {Producer M N}
   proc {RandList $}
      Ns=for I in 1..M collect:C do {C {OS.rand}} end
   in
      {New List init(Ns)}
   end
in
   for I in 1..N collect:C do {C {RandList}} end
end
fun {Filter S J}
   for L in S collect:C do
      if {L isEven(J $)} then {C L} end
   end
end
fun {Consumer P S1 S2}
   case S1#S2
   of (X|S1)#(Y|S2) then
      if {X get(P $)}=<{Y get(P $)}
      then X|Y|{Consumer P S1 S2}
      else Y|X|{Consumer P S1 S2} end
   else nil end
end