json.array!(@subjects) do |subject|
  json.extract! subject, :id, :nombre, :clave, :carrera_id, :practica, :teorica, :credito, :caracterizacion, :objetivo, :docente_id, :semestre_id, :unit
  json.url subject_url(subject, format: :json)
end
