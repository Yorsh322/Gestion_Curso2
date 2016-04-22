json.array!(@academics) do |academic|
  json.extract! academic, :id, :subject_id, :semester_id, :group_id, :course_id
  json.url academic_url(academic, format: :json)
end
