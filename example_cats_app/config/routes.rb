Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/index" => "cats#index"
    post "/cats" => "cats#create"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
