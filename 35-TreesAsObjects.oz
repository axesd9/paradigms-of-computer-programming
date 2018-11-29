declare
class Tree
   attr value left right
   meth init(V)
      value:=V
      left:=leaf
      right:=leaf
   end
   meth setLeft(T)
      left:=T
   end
   meth setRight(T)
      right:=T
   end
   meth setValue(V)
      value:=V
   end
   meth getLeft($)
      @left
   end
   meth getRight($)
      @right
   end
   meth getValue($)
      @value
   end
   meth isBalanced($)
      case @left#@right
      of leaf#leaf then true
      [] _#leaf then {@left NumLeaves($)}-1=<1
      [] leaf#_ then {@right NumLeaves($)}-1=<1
      else {Abs {@left NumLeaves($)}-{@right NumLeaves($)}}=<1 andthen {@left isBalanced($)} andthen {@right isBalanced($)}
      end
   end
   meth NumLeaves($)
      N={NewCell 0}
   in
      if @left==leaf then N:=@N+1 else N:=@N+{@left NumLeaves($)} end
      if @right==leaf then N:=@N+1 else N:=@N+{@right NumLeaves($)} end
      @N
   end
end