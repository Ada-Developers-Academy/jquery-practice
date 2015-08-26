Rails.application.routes.draw do
  resources :clubs
  post "/player_clubs/:club_id", to: "player_clubs#create", as: :player_club_create
  get "/player_clubs", to: "player_clubs#index", as: :player_club
  root "clubs#index"
end
