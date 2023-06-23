Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :machines, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :new]
    collection do
      get 'search', to: 'machines#search'
    end
  end
  resources :bookings, only: [:show, :update, :edit, :index]
  namespace :owner do
    resources :bookings, only: [:index, :update]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
