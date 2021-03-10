Rails.application.routes.draw do
  # get 'products/api/'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/show" => "products#index"
    
    # post "/users" => "users#create"
    # post "/sessions" => "sessions#create"
  end
end
