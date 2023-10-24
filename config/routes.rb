Rails.application.routes.draw do
  root 'restaurants#index'
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/restaurants", to: "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
