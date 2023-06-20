Rails.application.routes.draw do
  resources :payments
  resources :areas
  resources :bills
  namespace :api do
    resources :bills, param: :id, only: [:index, :show, :create, :update, :destroy] do
      collection do
        get 'sumbills_by_type', to: 'bills#sumbills_by_type'
      end
    end

    resources :areas do
      collection do
        get 'visible', to: 'areas#visible'
      end
    end

    resources :payments
  end
end
