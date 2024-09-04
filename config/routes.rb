Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/api/v1/songs", to: "api/v1/songs#index"
  get "/api/v1/songs/:id", to: "api/v1/songs#show"
  post "/api/v1/songs/", to: "api/v1/songs#create"
  patch "/api/v1/songs/:id", to: "api/v1/songs#update"
  delete "/api/v1/songs/:id", to: "api/v1/songs#destroy"

  get "/api/v2/songs", to: "api/v2/songs#index"

end
