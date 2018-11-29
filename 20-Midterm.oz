declare
proc {Split L L1 L2}
   case L
   of X|Y|T then Xs Ys in
      {Split T Xs Ys}
      L1=X|Xs
      L2=Y|Ys
   [] X|nil then
      L1=[X]
      L2=nil
   else
      L1=nil
      L2=nil
   end
end

fun {Reduction L A B C D}
   case L
   of W|X|Y|Z|T then A*W+B*X+C*Y+D*Z+{Reduction T A B C D}
   [] W|X|Y|T then A*W+B*X+C*Y+{Reduction T A B C D}
   [] W|X|T then A*W+B*X+{Reduction T A B C D}
   [] W|T then A*W+{Reduction T A B C D}
   else 0 end
end