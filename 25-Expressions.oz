declare
class Constant
   attr c
   meth init(C) c:=C end
   meth evaluate($) @c end
end
class Variable
   attr v
   meth init(V) {self set(V)} end
   meth set(V) v:=V end
   meth evaluate($) @v end
end
class Addition
   attr l r
   meth init(L R)
      l:=L
      r:=R
   end
   meth evaluate($)
      {@l evaluate($)}+{@r evaluate($)}
   end
end
class Subtraction
   attr l r
   meth init(L R)
      l:=L
      r:=R
   end
   meth evaluate($)
      {@l evaluate($)}-{@r evaluate($)}
   end
end
class Multiplication
   attr l r
   meth init(L R)
      l:=L
      r:=R
   end
   meth evaluate($)
      {@l evaluate($)}*{@r evaluate($)}
   end
end
class Division
   attr l r
   meth init(L R)
      l:=L
      r:=R
   end
   meth evaluate($)
      {@l evaluate($)} div {@r evaluate($)}
   end
end