Rails.application.routes.draw do
  # get 'products/api/'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # Show me all the info of all the products in the index:
    get "/products" => "products#index" # or get "/index" => "products#index"
    # Show me all the info of ONE product:
    get "/products/:id" => "products#show"
    # post "/products" => "products#create"

    # patch "/products/:id" => "products#update"
    # delete "/products/:id" => "products#destroy"

    # get "/show" => "products#index"
    # get "/suppliers" => "suppliers#index"
    # post "/suppliers" => "suppliers#create"
    # get "/suppliers/:id" => "suppliers#show"
    # patch "/suppliers/:id" => "suppliers#update"
    # delete "/suppliers/:id" => "suppliers#destroy"

    get "/show" => "products#index"
    # get "/orders" => "orders#index"
    get "/orders" => "orders#create"
    # get "/orders/:id" => "orders#show"
    # patch "/orders/:id" => "orders#update"
    # delete "/orders/:id" => "orders#destroy"
    # post "/users" => "users#create"
    # post "/sessions" => "sessions#create"
  end
end
