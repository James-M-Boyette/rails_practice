Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/hello_path" => "example_pages#hello_action"
    # the "/hello_path" is what you'll enter into your url
    # After your hash-rocket, the first part ("example_pages")points to the name of your controller
    # The second part ("hello_action") points to a method *in* that controller ... methods, in Rails, are known as "actions"
  end
  namespace :test do
    get "/test_this" => "test_example#test_action"
  end
  namespace :test do
    get "/testytest" => "try#try_this_action"
  end
  namespace :test do
    get "/showsometest" => "try#show_me_the_test"
  end
end
