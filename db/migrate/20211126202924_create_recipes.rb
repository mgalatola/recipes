class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :recipe_type
      t.references :user, null: false, foreign_key: true
      t.integer :difficulty_level
      t.text :description
      t.string :nationality

      t.timestamps
    end
  end
end
