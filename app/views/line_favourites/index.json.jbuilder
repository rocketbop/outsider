json.array!(@line_favourites) do |line_favourite|
  json.extract! line_favourite, :id, :location_id, :favorite_id
  json.url line_favourite_url(line_favourite, format: :json)
end
