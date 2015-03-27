class Articulo < ActiveRecord::Base
  belongs_to :marca
  belongs_to :caja
end
