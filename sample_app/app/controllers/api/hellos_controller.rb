class Api::HellosController < ApplicationController
  # Note, here, that ...
  # 1) the name of the class mirrors the sub-folder name in the "controllers" folder, and ...
  # 2) (whatever's after "::" ... why *are* there two colons?)
  #    is mirros (in CamelCase) the name of the controller

  def hello_action
    render json: { message: "This 'string' was produced directly from our most basic controller" }
    # This defines the web-response, or what will be sent back when hello_action is requested.
    # This is our most basic output - the view directly hard-coded into the controller (Note: you can render json, html, or even xml)
    # ... In the next controller, we'll point to a view file!
  end
end
