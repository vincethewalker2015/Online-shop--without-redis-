json.array!(@stockists) do |stockist|
  json.extract! stockist, :id, :name, :string, :address, :website, :string
  json.url stockist_url(stockist, format: :json)
end