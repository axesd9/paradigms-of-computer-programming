declare
GetRefTime={Link ['x-oz://boot/Time']}.1.getReferenceTime
fun {NaiveRabbit N}
  if N==0 then 2
  elseif N==1 then 4
  elseif N==2 then 8
  else {NaiveRabbit N-1}+{NaiveRabbit N-2}+{NaiveRabbit N-3} end
end

fun {Rabbit N}
   fun {Aux N A1 A2 A3}
      if N==0 then A1
      elseif N==1 then A2
      elseif N==2 then A3
      else {Aux N-1 A2 A3 A1+A2+A3}
      end
   end
in
   {Aux N 2 4 8}
end
fun {Measure N}
   Nrs = {GetRefTime}
   _ = {NaiveRabbit N}
   Nrf = {GetRefTime}
   Rs = {GetRefTime}
   _ = {Rabbit N}
   Rf = {GetRefTime}
in
   (Nrf-Nrs)-(Rf-Rs)
end