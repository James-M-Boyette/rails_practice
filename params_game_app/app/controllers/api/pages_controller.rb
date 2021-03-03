class Api::PagesController < ApplicationController
  #
  def sample_action
    render json: { message: "all is well! ... so far" }
  end

  def letter_a_check
    # Solicit User name
    # Check first letter of that string for the letter 'a'
    # If it IS an 'a', print "Hey, your name starts with the first letter of the alphabet!"

    render json: { message: "Hey, your name starts with the first letter of the alphabet!" }
  end
end
