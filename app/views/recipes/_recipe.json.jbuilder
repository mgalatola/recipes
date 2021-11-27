json.extract! recipe, :id, :name, :recipe_type, :user_id, :difficulty_level, :description, :nationality, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
