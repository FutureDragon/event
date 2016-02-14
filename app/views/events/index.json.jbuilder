json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :time, :date, :description, :picture
  json.url event_url(event, format: :json)
end
