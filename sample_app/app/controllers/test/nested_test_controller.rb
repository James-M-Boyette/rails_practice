class Test::NestedTestController < ApplicationController
  def hello_test_action
    render json: { message: "This 'string' was produced (again) directly from a controller - but from one located in a different, nested folder" }
  end

  # Here, we've moved our controller to a new folder - also nested under the "controllers" folder along with the "api" folder

  def pass_this_logic
    @message = "We're producing this 'string' using 1) a stored instance variable in our controller (@message) and 
    2) passing that variable's contents to a view file"
    render "passed_text.json.jb"
  end

  # Here, we've defined an instance variable (reserved in Ruby for classes) that we can access in other files
end
