local P Q X=1 Y=2 Z=3 in
   fun {P X}
      X*Y+Z
   end
   fun {Q Z}
      X*Y+Z
   end
   {Browse {P 42}==87}
   {Browse {Q 42}==44}
end