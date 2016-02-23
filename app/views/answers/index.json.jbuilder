json.array!(@answers) do |answer|
  json.extract! answer, :id, :titl, :text, :anfrage_id, :sender_id
  json.url answer_url(answer, format: :json)
end
