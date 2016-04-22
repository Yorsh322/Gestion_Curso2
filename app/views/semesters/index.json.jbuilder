json.array!(@semesters) do |semester|
  json.extract! semester, :id, :grado, :current, :calendar_id
  json.url semester_url(semester, format: :json)
end
