class Articulo < ActiveRecord::Base
  belongs_to :marca
  has_many :referencia_articulos
end
