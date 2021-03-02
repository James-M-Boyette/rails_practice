class Api::SimpleDisplaysController < ApplicationController
  def view_action
    render "simple_display_1.json.jb"
  end

  # Here, we've sent the web request to a view file
  # Note: we had to create a nested-folder that mirrored this controller's name ("simple_displays") in the super-folder "views" *in addition to* the file "simple_display_1.json.jb"
end
