declare
fun {Prod N M}
   if N==M then [M]
   else N|{Prod N+1 M}
   end
end
fun {Sieve Xs}
   case Xs
   of X|Xr then
      X|{Sieve thread {Filter Xr X} end}
   else nil end
end
fun {NotPrime S1 S2}
   case S1#S2
   of nil#_ then nil
   [] _#nil then S1
   [] (H1|T1)#(H2|T2) then
      if H1==H2 then {NotPrime T1 T2}
      else H1|{NotPrime T1 S2} end
   end
end
fun {Filter Xs K}
   case Xs
   of X|Xr then
      if (X mod K)\=0
      then X|{Filter Xr K}
      else {Filter Xr K} end
   else nil end
end