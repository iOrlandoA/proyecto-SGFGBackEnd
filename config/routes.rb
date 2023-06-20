Rails.application.routes.draw do
  resources :payments
  resources :areas
  resources :bills


  scope module: :api, path: 'api' do
    resources :bills, param: :id, only: [:index, :show, :create, :update, :destroy]
    resources :areas do
      collection do
        get 'visible', to: 'areas#visible'
      end
    end
    resources :payments
  end
end

