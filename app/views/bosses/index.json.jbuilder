json.array!(@bosses) do |boss|
  json.extract! boss, :id, :academico, :nombre, :apellido
  json.url boss_url(boss, format: :json)
end
