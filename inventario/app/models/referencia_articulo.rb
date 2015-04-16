class ReferenciaArticulo < ActiveRecord::Base
  belongs_to :articulo
  has_many :cajas
  has_many :colors
  has_many :tallas

  accepts_nested_attributes_for :colors, allow_destroy: true
  accepts_nested_attributes_for :tallas, allow_destroy: true

  def guardar_compra
  	
  	caja = Caja.new
  	caja.valor_transaccion = @referencia_articulos.valor
    caja.ganancia=@referencia_articulos.valor - @referencia_articulos.costo_referencia
    caja.save
  	
  end
end
