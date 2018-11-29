declare
fun {SlowComputation X Y}
   {Delay 1000}
   X*Y
end

local
   X={SlowComputation 1000 1}
in
   {Browse X+X+X}
end