json.array!(@buildings) do |building|
  json.extract! building, :name, :height
  json.url building_url(building, format: :json)
end