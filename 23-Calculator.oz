declare
fun {NewStack}
   {NewCell nil}
end
fun {IsEmpty S}
   @S==nil
end
proc {Push S X}
   S:=X|@S
end
fun {Pop S}
   H=@S.1
   S:=@S.2
in
   H
end
fun {Eval L}
   I={NewStack}
   R={NewStack}
in
   for E in {Reverse L} do
      {Push I E}
   end
   for while:{Not {IsEmpty I}} do
      case {Pop I}
      of '+' then
         {Push R {Pop R}+{Pop R}}
      [] '-' then
         {Push R ~{Pop R}+{Pop R}}
      [] '*' then
         {Push R {Pop R}*{Pop R}}
      [] '/' then
         X={Pop R}
         Y={Pop R}
      in
         {Push R (Y div X)}
      [] V then
         {Push R V}
      end
   end
   {Pop R}
end