json.array!(@designers) do |designer|
  json.extract! designer, :id, :designer_name
  json.url category_url(designer, format: :json)
end