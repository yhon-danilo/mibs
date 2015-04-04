class CreateReferenciaArticulos < ActiveRecord::Migration
  def change
    create_table :referencia_articulos do |t|
      t.string, :nombre_referencia
      t.integer, :cantidad
      t.integer, :valor
      t.string, :talla
      t.references, :articulo
      t.references :caja, index: true

      t.timestamps
    end
  end
end
