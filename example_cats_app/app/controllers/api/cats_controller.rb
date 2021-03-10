class Api::CatsController < ApplicationController
  def index
    render "test.json.jb"
  end

  def create
    p "current_user"
    p current_user
    p "current_user"
    if current_user
      cat = Cat.new(
        name: params[:name], 
        breed: params[:breed], 
        age: params[:age],
        id: 2
      )
      cat.save
    else
      render json: {message: "You can't do that, buddy"}
    end
    render 'index.json.jb'
  end

end
