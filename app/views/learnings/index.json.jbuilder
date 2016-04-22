json.array!(@learnings) do |learning|
  json.extract! learning, :id, :especifica, :actividad, :teaching, :portafolio, :content_id
  json.url learning_url(learning, format: :json)
end
