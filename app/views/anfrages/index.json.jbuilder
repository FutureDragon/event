json.array!(@anfrages) do |anfrage|
  json.extract! anfrage, :id, :empfaenger_id, :absender_id, :titel, :text
  json.url anfrage_url(anfrage, format: :json)
end
