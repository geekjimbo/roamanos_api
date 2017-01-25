Rails.application.routes.draw do
  resources :convert

  #get ':arabigo_in/convert', :controller=> 'convert', :action => 'show'

end
