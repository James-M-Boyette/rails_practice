class Api::ComicbooksController < ApplicationController
  def index
    render "index.json.jb"
  end
end
