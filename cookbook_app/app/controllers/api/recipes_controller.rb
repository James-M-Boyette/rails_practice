class Api::RecipesController < ApplicationController
  def index
    # Get all the recipes
    # @recipes = Recipe.all
    # Show all the recipes
    render "index.json.jb"
  end

  def single_recipe
    # get some data from the db
    @recipe = Recipe.first
    render "single_recipe.json.jb"
  end
end
