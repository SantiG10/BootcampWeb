json.array!(@products) do |product|
  json.extract! product, :id, :marca, :talla, :referencia, :color, :costo_unitario, :total
  json.url product_url(product, format: :json)
end
