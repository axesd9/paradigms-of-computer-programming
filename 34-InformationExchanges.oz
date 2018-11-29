declare
fun {Eval Port}
   S
in
   thread
      for E in S do F#X=E in {Send Port {F X}} end
   end
   {NewPort S}
end