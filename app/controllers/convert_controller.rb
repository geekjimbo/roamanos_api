require './lib/romanos'

class ConvertController < ApplicationController

  def index
   msg = call_convertidor params[:arabigo_in]
   render json: msg
  end

  def show
   msg = call_convertidor params[:id].to_i
   render json: msg
  end

  private

  def call_convertidor(arabigo_in)
   msg = {:return =>"nada que convertir", :code => 404, :result => ""}
   _return = convert arabigo_in
   msg = {:return =>"conversión exitosa!", :code => 200, :result => _return} if !_return.nil?
  end
end






























    #can_convert = convert params[:arabigo_in] rescue false
    #if can_convert
    # msg[:return] = convert params[:arabigo_in]
    # msg[:code] = 200
    #end

#    def call_converter(arabigo_in)
#      _return = ""
#      msg_code = 404
#      can_convert = convert arabigo_in rescue false
#      if can_convert
#       _return = convert arabigo_in
#       msg_code = 200
#      end
#
#       _return_msg = Traductor.success_msg params[:language] if msg_code == 200
#       _return_msg = Traductor.fail_msg params[:language] if msg_code == 404
#       _return_msg.merge!({"result": _return, "code": msg_code })
#      return _return_msg
#    end
