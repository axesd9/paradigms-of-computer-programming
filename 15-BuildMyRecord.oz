declare
fun {Transform L}
   fun {Aux R Fs Vs}
      case Fs#Vs
      of (F|Fr)#(V|Vr) andthen {IsList V} then
         {Aux {AdjoinAt R F {Transform V}} Fr Vr}
      [] (F|Fr)#(V|Vr) then
         {Aux {AdjoinAt R F V} Fr Vr}
      else R end
   end
in
   {Aux L.1 L.2.1 L.2.2.1}
end