class Api::ContactsController < ApplicationController
  def sample_action
    @message = "Hello!"
    render "contacts.json.jb"
  end
end
