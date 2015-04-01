class MarcasController < ApplicationController

	def index
		@marca=Marca.all
	end

	def show
		@marca=Marca.find(params[:marca_id])
	end

end