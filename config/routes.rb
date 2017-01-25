Rails.application.routes.draw do
  resources :convert

  #get 'states/:country_id/index', :controller=> 'state', :action=>'index' 
  #get 'cities/:country_id/:state_id/index', :controller=> 'city', :action=>'index'
  #get ':id/data_package/', :controller=> 'data_package', :action=>'show'
end
