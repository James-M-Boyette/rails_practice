class Test::TryController < ApplicationController
  def try_this_action
    render json: { message: "tried it" }
  end

  # Here, we've kept the controller in the same folder as the Testy controller, so we didn't need to
  # change the first class (stays "Test"), and have instead only modified the second class to "TryController"
  # in order to match the file's name ...
  def show_me_the_test
    render show_some_test.json.jb
  end
end
