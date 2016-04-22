json.array!(@contents) do |content|
  json.extract! content, :id, :unidad, :tema, :subtema, :fuente, :didactico, :temario_id
  json.url content_url(content, format: :json)
end
