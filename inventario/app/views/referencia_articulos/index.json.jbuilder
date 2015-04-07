json.array!(@referencia_articulos) do |referencia_articulo|
  json.extract! referencia_articulo, :id, :nombre_referencia, :color, :valor, :talla, :articulo_id, :caja_id
  json.url referencia_articulo_url(referencia_articulo, format: :json)
end
