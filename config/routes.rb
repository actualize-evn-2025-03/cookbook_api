Rails.application.routes.draw do
  # get "/first_recipe", controller: "recipes", action: "first_recipe"
  get "/first_recipe" => "recipes#first_recipe"
  get "/all_recipes" => "recipes#all_recipes"
end
