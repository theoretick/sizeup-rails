json.array!(@cities) do |city|
  json.extract! city, :name, :country
  json.url city_url(city, format: :json)
end