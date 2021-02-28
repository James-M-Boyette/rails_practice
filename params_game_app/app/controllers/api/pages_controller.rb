class Api::PagesController < ApplicationController
  def sample_action
    @message = "Hello!"
    render "sample.json.jb"
  end

  def name
    puts "name from parameters" # This didn't print
    render "name.json.jb" # This will "render" a 'view >page'
  end
end
