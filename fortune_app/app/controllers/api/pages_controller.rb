class Api::PagesController < ApplicationController

  #   Create a brand new rails application called `fortune_app` with separate pages for each of these features. You’ll need to generate a controller like `api/my_examples` and use jb views to render the json!

  # 1. The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.

  def fortune
    # render json: "fortune"
    fortunes = ["You're going to need more coffee soon ...", "All of your google searches will give you what you want, today", "Sometimes ... I just don't know"]
    @your_fortune = fortunes.sample
    render "fortune.json.jb"
  end

  # 2. The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.

  def lotto_number
    # render json: "lotto_number"
    numbers = (1..60).to_a
    @winning_numbers = []
    6.times do
      @winning_numbers << numbers.sample
    end
    render "lotto_number.json.jb"
  end

  # 3. Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.

  def page_visits
    render json: "You've visited alot"
  end

  # 4. Bonus: Add a page that returns the lyrics for “99 bottles of beer on the wall”.
  def song
    index = 99
    while index > 0
      puts "#{index} bottles of beer on the wall,
      #{index} bottles of beer!
      Take one down, pass it around -
      #{index - 1} bottles of beer on the wall!"
      index -= 1
    end
  end

  # 5. Bonus: Make a Ruby script using the HTTP gem to display the results in the terminal instead of a web browser!
end
