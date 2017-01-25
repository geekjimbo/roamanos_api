require './lib/romanos'

class ConvertController < ApplicationController

  def index
    msg = {:return => "nada de convertir", :code => 404 }
    can_convert = convert params[:arabigo_in] rescue false
    if can_convert
     msg[:return] = convert params[:arabigo_in]
     msg[:code] = 200
    end
    render json: msg
  end
end
