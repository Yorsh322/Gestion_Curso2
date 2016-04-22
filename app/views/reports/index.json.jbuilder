json.array!(@reports) do |report|
  json.extract! report, :id, :num, :grupo, :numero, :a, :epo, :esr, :e1, :c, :d, :e, :f, :g, :total
  json.url report_url(report, format: :json)
end
