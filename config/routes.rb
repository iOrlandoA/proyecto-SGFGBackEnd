Rails.application.routes.draw do
  resources :areas
  resources :bills


  scope module: :api, path: "api" do
    resources :bills
    resources :areas
  end

end
