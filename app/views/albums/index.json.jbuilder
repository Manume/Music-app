json.array!(@albums) do |album|
  json.extract! album, :id, :name, :banner, :cover
  json.url album_url(album, format: :json)
end
