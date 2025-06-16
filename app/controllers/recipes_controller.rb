class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  def create
    @recipe = Recipe.create!(
      title: params["title"],
      chef: params["chef"],
      ingredients: params["ingredients"],
      directions: params["directions"],
      prep_time: params["prep_time"],
      image_url: params["image_url"]
    )

    render json: @recipe
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update(
      title: params["title"] || @recipe.title,
      chef: params["chef"] || @recipe.chef,
      ingredients: params["ingredients"] || @recipe.ingredients,
      directions: params["directions"] || @recipe.directions,
      prep_time: params["prep_time"] || @recipe.prep_time,
      image_url: params["image_url"] || @recipe.image_url
    )

    render json: @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    render json: { message: "Recipe deleted." }
  end
end
