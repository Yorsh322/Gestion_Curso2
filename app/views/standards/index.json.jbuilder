json.array!(@standards) do |standard|
  json.extract! standard, :id, :conceptual, :procedimental, :actitudinal, :content_id
  json.url standard_url(standard, format: :json)
end
