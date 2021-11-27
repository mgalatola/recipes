class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.references :user

      t.timestamps
    end
  end
end
