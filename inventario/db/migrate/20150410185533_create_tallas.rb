class CreateTallas < ActiveRecord::Migration
  def change
    create_table :tallas do |t|
      t.string :talla_referencia
      t.references :referencia_articulo, index: true

      t.timestamps
    end
  end
end
