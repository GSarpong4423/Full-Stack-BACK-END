class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_title, :ingredient_one, :ingredient_two, :ingredient_three, :ingredient_four, :ingredient_five, :step_A, :step_B, :step_C, :step_D
  has_one :user
end
