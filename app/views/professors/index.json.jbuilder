json.array!(@professors) do |professor|
  json.extract! professor, :id, :teacher_id, :calendar_id, :career_id
  json.url professor_url(professor, format: :json)
end
