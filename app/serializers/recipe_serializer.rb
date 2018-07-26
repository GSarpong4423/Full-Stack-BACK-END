class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_title, :ingredients, :steps, :tips
  has_one :user
end
