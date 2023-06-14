Rails.application.routes.draw do
  resources :payments
  resources :areas
  resources :bills


  scope module: :api, path: "api" do
    resources :bills, param: :bill_ref, only: [:index, :show, :create, :update, :destroy]
    resources :areas
    resources :payments
  end

end
