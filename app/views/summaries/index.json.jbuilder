json.array!(@summaries) do |summary|
  json.extract! summary, :id, :asignatura_id
  json.url summary_url(summary, format: :json)
end
