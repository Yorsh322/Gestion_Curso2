json.array!(@competitions) do |competition|
  json.extract! competition, :id, :generica, :instrumental, :interpersonal, :sistematica, :content_id
  json.url competition_url(competition, format: :json)
end
