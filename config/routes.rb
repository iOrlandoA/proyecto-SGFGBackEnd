Rails.application.routes.draw do
  resources :directors
  scope module: :api do 
    ## Aqui van los recursos del API
  end
end
