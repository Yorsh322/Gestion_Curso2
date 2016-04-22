json.array!(@folders) do |folder|
  json.extract! folder, :id, :temario_id, :calendario_id, :carrera_id, :semestre_id, :grupo, :docente_id, :departamento
  json.url folder_url(folder, format: :json)
end
