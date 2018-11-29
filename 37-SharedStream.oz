declare
proc {Add S}
   proc {Aux S}
      case S of r(M X Y R)|Sr then
         if M=='add' then R=X+Y else skip end
         {Aux Sr}
      end
   end
in
   thread {Aux S} end
end
proc {Sub S}
   proc {Aux S}
      case S of r(M X Y R)|Sr then
         if M=='sub' then R=X-Y else skip end
         {Aux Sr}
      end
   end
in
   thread {Aux S} end
end
proc {Mul S}
   proc {Aux S}
      case S of r(M X Y R)|Sr then
         if M=='mul' then R=X*Y else skip end
         {Aux Sr}
      end
   end
in
   thread {Aux S} end
end
proc {Divide S}
   proc {Aux S}
      case S of r(M X Y R)|Sr then
         if M=='divide' then R=X div Y else skip end
         {Aux Sr}
      end
   end
in
   thread {Aux S} end
end