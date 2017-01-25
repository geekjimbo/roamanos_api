class Espanol < Traductor 
   def success_msg(options)
     _msg = {:result => "Conversion Exitosa"}
   end

   def fail_msg(options)
     _msg = {:result => "Nada de Convertir"}
   end
end
