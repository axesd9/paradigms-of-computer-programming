declare
fun {Shuffle L}
   M={Length L}
   A={NewArray 1 M 0}
   S={NewCell nil}
in
   for X in 1..M do
      A.X:={Nth L X}
   end
   for X in 1..M do
      N=M-X+1
      I={Abs {OS.rand} mod N}+1
   in
      S:=A.I|@S
      A.I:=A.N
   end
   @S
end