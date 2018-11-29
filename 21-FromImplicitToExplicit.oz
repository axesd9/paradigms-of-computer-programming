declare
fun {Reverse L}
   R={NewCell nil}
in
   for E in L do
      R:=E|@R
   end
   @R
end