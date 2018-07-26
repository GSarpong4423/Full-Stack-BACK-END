class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :user, foreign_key: true
      t.string :recipe_title
      t.text :ingredients
      t.text :steps
      t.text :tips

      t.timestamps
    end
  end
end
