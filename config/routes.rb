Rails.application.routes.draw do
  get 'participants/_form'
  get 'participants/_participant'
  resources :tours
  resources :donations

  resources :arts do
    resources :explanations, only: [:create, :update,:destroy, :edit]
    resources :appreciations, only: [:create, :update, :edit,:destroy] #arreglar destroy sin nested
  end



  resources :like_appreciations, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]

  devise_for :users

  resources :users do
    resources :donations, only: [:index, :create]
  end

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
