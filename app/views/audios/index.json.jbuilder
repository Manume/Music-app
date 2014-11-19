json.array!(@audios) do |audio|
  json.extract! audio, :id, :title, :audio, :artist, :album_id
  json.url audio_url(audio, format: :json)
end
