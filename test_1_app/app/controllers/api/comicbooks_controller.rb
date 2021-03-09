class Api::ComicbooksController < ApplicationController
  def index
    @comicbooks = ComicBook.all
    render "index.json.jb"
  end
end
