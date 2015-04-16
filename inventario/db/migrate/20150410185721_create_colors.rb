class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :color_referencia
      t.references :referencia_articulo, index: true

      t.timestamps
    end
  end
end
