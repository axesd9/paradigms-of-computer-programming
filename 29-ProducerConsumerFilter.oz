local Producer Consumer Filter in
   fun {Producer N}
      fun {Aux M}
         if M==N
         then [M]
         else M|{Aux M+1}
         end
      end
   in
      {Aux 1}
   end
   fun {Consumer S}
      {FoldR S fun {$ X Y} X+Y end 0}
   end
   fun {Filter S}
      {List.filter S IsOdd}
   end
   local S1 S2 in
      thread S1={Producer 20} end
      thread S2={Filter S1} end
      thread {Browse {Consumer S2}} end
   end
end