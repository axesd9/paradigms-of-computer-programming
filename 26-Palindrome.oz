declare
class Sequence
   attr xs
   meth init xs:=nil end
   meth isEmpty($) @xs==nil end
   meth first($) @xs.1 end
   meth last($) {List.last @xs} end
   meth insertFirst(X) xs:=X|@xs end
   meth insertLast(X) xs:={Append @xs [X]} end
   meth removeFirst xs:=@xs.2 end
   meth removeLast
      L={Length @xs}
   in
      xs:={List.take @xs L-(if L==0 then 0 else 1 end)}
   end
end
fun {Palindrome Xs}
   S={New Sequence init}
   fun {Check}
      if {S isEmpty($)} then true
      elseif {S first($)}=={S last($)} then
         {S removeFirst}
         {S removeLast}
         {Check}
      else false end
   end
in
   for X in Xs do
      {S insertFirst(X)}
   end
   {Check}
end