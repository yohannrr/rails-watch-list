Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  resources :lists, except: [:destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  root "posts#index"
end
