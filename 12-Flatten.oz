declare
fun {FlattenList L}
   case L
   of H|T andthen {IsList H} then
      {Append {FlattenList H} {FlattenList T}}
   [] H|T then H|{FlattenList T}
   else nil end
end