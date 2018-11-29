declare
fun {Fact N}
   fun {Aux A B I}
      if I>N then A
      else H=B*I in {Aux H|A H I+1}
      end
   end
in
   {Reverse {Aux nil 1 1}}
end