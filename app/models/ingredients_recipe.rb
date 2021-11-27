class IngredientsRecipe < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :ingredient_id, presence: true
  validates :amount, presence: true

  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank
end
