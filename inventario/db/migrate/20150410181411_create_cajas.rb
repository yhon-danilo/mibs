class CreateCajas < ActiveRecord::Migration
  def change
    create_table :cajas do |t|
      t.decimal :valor_transaccion
      t.decimal :ganancia
      t.references :referencia_articulo, index: true

      t.timestamps
    end
  end
end
