Rails.application.routes.draw do

  resources :tours do
    resources :participants, only: [:create, :destroy, :index] do
      member do
        post 'invite'
      end
    end
  end


  resources :donations


  get '/arts/vr', to: 'arts#vr'

  resources :arts do
    resources :explanations, only: [:create, :update,:destroy, :edit]
    resources :appreciations, only: [:create, :update, :edit,:destroy] #arreglar destroy sin nested
  end



  resources :like_appreciations, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]

  devise_for :users

  resources :users do
    resources :donations, only: [:index, :create] do
      collection do
        get 'received'
        get 'made'
      end
    end
  end



  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
