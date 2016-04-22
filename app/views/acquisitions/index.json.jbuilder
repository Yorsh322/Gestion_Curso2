json.array!(@acquisitions) do |acquisition|
  json.extract! acquisition, :id, :programa, :real, :observacion, :revision, :thp, :thr, :content_id
  json.url acquisition_url(acquisition, format: :json)
end
