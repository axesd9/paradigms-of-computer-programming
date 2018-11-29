declare
fun {FromListToTree L}
   fun {Insert T N}
      case T
      of leaf then btree(N left:leaf right:leaf)
      [] btree(V left:L right:R) andthen N==V then btree(V left:L right:R)
      [] btree(V left:L right:R) andthen N<V then btree(V left:{Insert L N} right:R)
      [] btree(V left:L right:R) andthen N>V then btree(V left:L right:{Insert R N})
      end
   end
in
   {FoldL L Insert leaf}
end
fun {FromTreeToList T}
   case T
   of btree(N left:L right:R) then
      {Append {FromTreeToList L} N|{FromTreeToList R}}
   [] leaf then nil end
end