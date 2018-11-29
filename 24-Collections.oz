declare
class Collection
   attr xs
   meth init
      xs:=nil
   end
   meth put(X)
      xs:=X|@xs
   end
   meth get(X)
      X=@xs.1
      xs:=@xs.2
   end
   meth isEmpty($)
      @xs==nil
   end
   meth union(C)
      for while:{Not {C isEmpty($)}} do
         {self put({C get($)})}
      end
   end
end