json.array!(@careers) do |career|
  json.extract! career, :id, :name, :plan
  json.url career_url(career, format: :json)
end
