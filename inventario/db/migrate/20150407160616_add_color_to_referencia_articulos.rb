class AddColorToReferenciaArticulos < ActiveRecord::Migration
  def change
    add_column :referencia_articulos, :color, :string
  end
end
