Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/random_fortune" => "pages#fortune"
  end
  namespace :api do
    get "/lotto_number" => "pages#lotto_number"
  end
  namespace :api do
    get "/page_visits" => "pages#page_visits"
  end
  namespace :api do
    get "/99_Bottles" => "pages#song"
  end
end
