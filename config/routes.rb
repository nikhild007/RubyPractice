Rails.application.routes.draw do
  resources :comments
  resources :students
  root 'home#index'
  get 'home/about'


  # Instead of having defined each method simply use resources
  # get '/articles', to: 'articles#index'
  # get "/articles/:id", to: "articles#show"

  #Alternative to have only specific routes
  # resources :articles, only: [:index, :create]
  # resources :articles, except: [:destroy]

  resources :articles do
    resources :comments
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
