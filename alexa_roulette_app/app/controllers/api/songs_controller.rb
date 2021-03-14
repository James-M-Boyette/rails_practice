class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    render "show.json.jb"
  end

  def update
  end

  def delete
  end
end
