class Api::ContactsController < ApplicationController
  def show
    render "contact_view.json.jb"
  end
end
