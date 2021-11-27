class Ingredient < ApplicationRecord
  belongs_to :user
  has_many :ingredients_recipes

  validates :name, presence: true
  validates :calories, presence: true

  def to_s
    name
  end
end
