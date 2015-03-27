class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :nombre_articulo
      t.integer :cantidad_articulo
      t.integer :valor_articulo
      t.string :talla_articulo
      t.references :marca, index: true
      t.references :caja, index: true

      t.timestamps
    end
  end
end
