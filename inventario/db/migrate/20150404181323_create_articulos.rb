class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :nombre_articulo
      t.references :marca, index: true

      t.timestamps
    end
  end
end
