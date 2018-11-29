declare
fun {Counter S}
   InfoC={NewCell nil}
   fun {Trans Xs}
      case Xs
      of X|Xr then
         InfoC:={NewInfo @InfoC X}
         @InfoC|{Trans Xr}
      else nil end
   end
   fun {NewInfo Ps Y}
      case Ps
      of X#N|Pr andthen X==Y then X#N+1|Pr
      [] P|Pr then P|{NewInfo Pr Y}
      [] nil then [Y#1] end
   end
in
   thread {Trans S} end
end

local InS X in
    X={Counter InS}
    InS=a|b|a|c|_
    {Browse X}
end