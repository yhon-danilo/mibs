class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre_usuario
      t.string :contrasena
      t.string :salt
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
