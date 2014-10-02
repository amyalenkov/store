json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :author
  json.url product_url(product, format: :json)
end
