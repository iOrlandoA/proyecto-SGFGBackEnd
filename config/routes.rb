Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  resources :areas
  resources :bills


  scope module: :api, path: "api" do
    resources :bills
    resources :areas
  end

end
