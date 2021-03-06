Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :locations, only: [:index, :show]
  resources :items, only: [:index, :show]

  get "/tools", to: "items#index"
  resources :reservations
  resources :reviews, only: [:index, :show, :create]
  resources :users, only: [:show, :new, :create, :edit, :update]

  resources :tool_types, :path => "tool-types", only: [:index, :show]

  get "/", to: "root#welcome", as: "root"
  get "signup", to: "users#new", as: "signup"
  get "/signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy", as: "signout"

  get "/admin", to: "users#admin"
  get '/reservations/:id/review/new', to: 'reviews#new', as: 'review_new'
  get '/tools/:id/reservations/new', to: 'reservations#new', as: 'reservation_new'

  post '/reservations/:id', to: "reservations#finish", as: "finish"

end


#make new reservation; reservation belongs_to items
# route: /item/:id/reservations/new
