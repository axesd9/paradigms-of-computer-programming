declare
fun {FunnyFunc FunL L}
    case L of H|T then {FunL.1 H}|{FunnyFunc FunL.2 T}
    else nil end
end
proc {Test FunL L SolL}
    {Browse {FunnyFunc FunL L}==SolL}
end

{Test
 [fun {$ X} X+X end
  fun {$ X} X-X end
  fun {$ X} X*X end]
 [1 2 3]
 [2 0 9]}