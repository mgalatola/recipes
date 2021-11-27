class Recipe < ApplicationRecord
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes, :class_name => 'Ingredient', dependent: :destroy

  belongs_to :user

  has_one_attached :picture, dependent: :destroy

  validates :name, presence: true
  validates :recipe_type, presence: true
  validates :difficulty_level, presence: true
  validates :description, presence: true
  validate :ingredients_count

  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :ingredients_recipes, allow_destroy: true

  enum recipe_type: { antipasto: 0, primo: 1, secondo: 2, contorno: 3, dolce: 4 }
  enum difficulty_level: { facile: 3, media: 1, difficile: 2 }

  private

  def ingredients_count
    errors.add(:ingredients, "at least one") if ingredients_recipes.select { |i| !i.marked_for_destruction? }.size == 0
  end
end
