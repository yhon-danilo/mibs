class RemoveCantidadFromReferenciaArticulos < ActiveRecord::Migration
  def change
    remove_column :referencia_articulos, :cantidad, :integer
  end
end
