json.array!(@catalogs) do |catalog|
  json.extract! catalog, :id, :subject_id, :group_id, :semester_id, :professor_id
  json.url catalog_url(catalog, format: :json)
end
