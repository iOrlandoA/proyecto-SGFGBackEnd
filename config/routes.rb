Rails.application.routes.draw do
  resources :bills


  scope module: :api, path: "api" do
    resources :bills
  end

end
