class RecipesController < ApplicationController
  def first_recipe
    recipe = Recipe.first

    render json: recipe
  end

  def all_recipes
    recipes = Recipe.all

    render json: recipes
  end
end
