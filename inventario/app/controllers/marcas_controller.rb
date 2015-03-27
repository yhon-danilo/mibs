class MarcasController < ApplicationController

	def index
		@marca=Marca.all
	end

end