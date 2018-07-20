class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :user, foreign_key: true
      t.string :recipe_title
      t.string :ingredient_one
      t.string :ingredient_two
      t.string :ingredient_three
      t.string :ingredient_four
      t.string :ingredient_five
      t.string :step_A
      t.string :step_B
      t.string :step_C
      t.string :step_D

      t.timestamps
    end
  end
end
