declare
class Stack
   attr xs
   meth init
      xs:=nil
   end
   meth size($)
      {Length @xs}
   end
   meth isEmpty($)
      @xs==nil
   end
   meth top($)
      case @xs
      of X|_ then X
      else raise emptyStack end
      end
   end
   meth push(X)
      xs:=X|@xs
   end
   meth pop($)
      case @xs
      of X|Xr then
         xs:=Xr
         X
      else raise emptyStack end
      end
   end
end
class Queue
   attr xs
   meth init
      xs:=nil
   end
   meth size($)
      {Length @xs}
   end
   meth isEmpty($)
      @xs==nil
   end
   meth front($)
      case @xs
      of X|_ then X
      else raise emptyQueue end
      end
   end
   meth enqueue(X)
      xs:={Append @xs [X]}
   end
   meth dequeue($)
      case @xs
      of X|Xr then
         xs:=Xr
         X
      else raise emptyQueue end
      end
   end
end