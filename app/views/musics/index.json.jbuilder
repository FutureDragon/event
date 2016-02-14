json.array!(@musics) do |music|
  json.extract! music, :id, :name, :url, :description
  json.url music_url(music, format: :json)
end
