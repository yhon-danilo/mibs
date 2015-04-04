json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :nombre_articulo, :marca_id
  json.url articulo_url(articulo, format: :json)
end
