json.extract! car, :id, :make, :model, :model_year, :status, :price, :user_id, :dealership_id, :created_at, :updated_at
json.url car_url(car, format: :json)
