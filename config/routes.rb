Rails.application.routes.draw do
  resources :payments
  resources :areas
  resources :bills


  scope module: :api, path: "api" do
    resources :bills
    resources :areas
    resources :payments
  end

end
