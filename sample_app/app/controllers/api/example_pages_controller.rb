class Api::ExamplePagesController < ApplicationController
  def hello_action
    render json: { message: "hello" }
    # This defines the web-response, or what will be sent back when hello_action is requested; you can render json, html, or even xml
  end
  def test_action
    render json: {message: "test"}
  end
end
