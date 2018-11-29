declare
fun {Prime N}
   fun {Aux N M}
      if M==1 then true
      elseif (N mod M)==0 then false
      else {Aux N M-1} end
   end
in
   if N==1 then false
   else {Aux N (N div 2)}
   end
end