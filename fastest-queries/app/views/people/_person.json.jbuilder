json.extract! person, :id, :name, :age, :document, :country, :favorite_color, :created_at, :updated_at
json.url person_url(person, format: :json)
