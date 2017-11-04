json.array!(@cars) do |car|
  json.extract! car, :id, :company, :color, :year, :price, :birth_date, :model
  json.url car_url(car, format: :json)
end
