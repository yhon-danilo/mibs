class AddCostoReferenciaToReferenciaArticulos < ActiveRecord::Migration
  def change
    add_column :referencia_articulos, :costo_referencia, :integer
  end
end
