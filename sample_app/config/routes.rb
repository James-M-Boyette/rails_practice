Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  # First two routes are basic: hello_path will send the request to a controller that simply prints back out "hello"; point_path will send the request to a controller that calls upon a pre-defined "view" file - where we again have an hardcoded "hello from a view file" reply
  namespace :api do
    get "/hello_path" => "hellos#hello_action"
    # the "/basic_path" is what you'll enter into your url
    # After your hash-rocket, the first part ("simple_APInested")points to the name of your controller
    # The second part ("hello_action") points to a method *in* that controller ... methods, in Rails, are known as "actions"
  end
  namespace :api do
    get "/view_path" => "simple_displays#view_action"
  end

  # Next few routes will go through a different, nested folder called "test" (in the same "controllers" folder as "api")
  namespace :test do
    get "/test_hello" => "nested_test#hello_test_action"
  end

  namespace :test do
    get "/test_view" => "nested_test#pass_this_logic"
  end
end
