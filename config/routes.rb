Rails.application.routes.draw do
  devise_for :users
  resources :areas
  resources :bills


  scope module: :api, path: "api" do
    resources :bills
    resources :areas
  end

end
