json.array!(@sources) do |source|
  json.extract! source, :id, :fuente, :didactic, :content_id
  json.url source_url(source, format: :json)
end
