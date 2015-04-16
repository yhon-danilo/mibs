class AddCantidadToReferenciaArticulo < ActiveRecord::Migration
  def change
    add_column :referencia_articulos, :cantidad, :integer
  end
end
