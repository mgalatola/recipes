json.extract! user, :id, :first_name, :last_name, :birth_date, :sex, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
