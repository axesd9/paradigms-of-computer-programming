declare
fun {Prefix L1 L2}
   case L1#L2
   of nil#_ then true
   [] _#nil then false
   [] (H1|T1)#(H2|T2) then H1==H2 andthen {Prefix T1 T2}
   end
end
fun {FindString L1 L2}
   case L2
   of nil then {Prefix L1 L2}
   [] _|T then {Prefix L1 L2} orelse {FindString L1 T}
   end
end