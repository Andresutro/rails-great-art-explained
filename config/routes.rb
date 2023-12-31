Rails.application.routes.draw do
  get 'profiles/index'
  get 'vr/index'

  get 'participants', to: 'participants#index'

  resources :tours do
    resources :participants, only: [:create, :destroy] do
      member do
        post 'invite'
      end
    end
  end





  get '/arts/vr', to: 'arts#vr'

  resources :arts do
    get 'allarts', on: :collection
    resources :explanations, only: [:create, :update,:destroy, :edit]
    resources :appreciations, only: [:create, :update, :edit,:destroy]
  end




  resources :like_appreciations, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]

  devise_for :users


  resources :users, only: [] do
    resources :vr , only: [:index]
    resources :profiles , only: [:index]
    resources :donations, only: [:index, :create, :show] do
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
