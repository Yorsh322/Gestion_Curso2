json.array!(@principals) do |principal|
  json.extract! principal, :id, :academico, :nombre, :apellido
  json.url principal_url(principal, format: :json)
end
