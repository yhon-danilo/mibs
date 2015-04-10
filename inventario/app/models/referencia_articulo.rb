class ReferenciaArticulo < ActiveRecord::Base
  belongs_to :articulo
  has_many :cajas

  def guardar_compra
  	self
  	caja = Caja.new
  	caja.valor_transaccion = 
  end
end
