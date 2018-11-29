declare
fun {Build D C}
   fun {Aux X Ds Cs}
      case Ds#Cs
      of (D|Dr)#(C|Cr) then
         if X==D then C
         else {Aux X Dr Cr}
         end
      else bottom end
   end
in
   fun {$ X} {Aux X D C} end
end