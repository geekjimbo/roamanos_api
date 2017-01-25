class English < Traductor 
   def success_msg(options)
     _msg = {:result => "Convertion Succeeded"}
   end

   def fail_msg(options)
     _msg = {:result => "Nothing to Convert"}
   end
end
