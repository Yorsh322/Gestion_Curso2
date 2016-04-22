json.array!(@releases) do |release|
  json.extract! release, :id, :teacher_id, :boss_id, :value_one, :value_two, :value_three, :value_four, :value_five, :value_six, :observation
  json.url release_url(release, format: :json)
end
