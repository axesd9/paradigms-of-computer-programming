declare
fun {Infix Tree}
   case Tree
   of btree(N left:L right:R) then {Append {Infix L} N|{Infix R}}
   [] leaf then nil end
end