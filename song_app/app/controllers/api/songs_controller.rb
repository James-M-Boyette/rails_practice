class Api::SongsController < ApplicationController
  def test
    render json: "testing the Songs controller, successful"
  end

  def album_art
    render json: "Album Art goes here"
  end
end


