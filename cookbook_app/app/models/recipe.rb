class Recipe < ApplicationRecord
  class Recipe
    attr_accessor :title, :chef, :image_url, :prep_time, :ingredients, :directions

    def initialize(input_info)
      @title = input_info[:title]
      @chef = input_info[:chef]
      @image_url = input_info[:image_url]
      @prep_time = input_info[:prep_time]
      @ingredients = input_info[:ingredients]
      @directions = input_info[:directions]
      recipe.save
    end
  end
end
