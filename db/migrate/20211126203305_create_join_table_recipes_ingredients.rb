class CreateJoinTableRecipesIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients_recipes do |t|
      t.references :ingredient
      t.references :recipe
      t.integer :amount
      # t.index [:recipe_id, :ingredient_id]
      # t.index [:ingredient_id, :recipe_id]
    end
  end
end
