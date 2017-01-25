class ConvertController < ApplicationController

  def index
    msg = {"return":"hola", "code":200}
    render json: msg
  end
end
