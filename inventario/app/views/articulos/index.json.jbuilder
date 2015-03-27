json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :nombre_articulo, :cantidad_articulo, :valor_articulo, :talla_articulo, :marca_id, :caja_id
  json.url articulo_url(articulo, format: :json)
end
