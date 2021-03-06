Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/the_recipe" => "recipes#single_recipe"
    get "/the_index" => "recipes#index"
  end
end
