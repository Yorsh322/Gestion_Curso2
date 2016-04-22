json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :inicia, :finaliza, :period, :year, :status
  json.url calendar_url(calendar, format: :json)
end
