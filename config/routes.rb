Rails.application.routes.draw do
  resources :donations

  resources :arts do
    resources :explanations, only: [:create, :update,:destroy]
    resources :appreciations, only: [:create, :update,:destroy]
  end

  resources :like_appreciations, only: [:create, :destroy]
  devise_for :users

  resources :users do
    resources :donations, only: [:index, :create]
  end

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
