json.extract! ingredient, :id, :name, :calories, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
