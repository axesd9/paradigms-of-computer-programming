declare
fun {NumLeaves Tree}
   case Tree
   of btree(_ left:L right:R) then {NumLeaves L}+{NumLeaves R}
   [] leaf then 1 end
end
fun {IsBalanced Tree}
   case Tree
   of btree(_ left:L right:R) then
      {Abs {NumLeaves L}-{NumLeaves R}}=<1 andthen {IsBalanced L} andthen {IsBalanced R}
   [] leaf then true end
end