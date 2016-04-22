json.array!(@courses) do |course|
  json.extract! course, :id, :student_id, :calendar_id, :career_id
  json.url course_url(course, format: :json)
end
