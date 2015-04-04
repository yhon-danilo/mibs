class ReferenciaArticulo < ActiveRecord::Base
  belongs_to :articulo
  belongs_to :caja
end
