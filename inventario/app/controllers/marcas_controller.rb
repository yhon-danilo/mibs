class MarcasController < ApplicationController

	def index

		@usuario_actual=session[:user_id]
		@marca=Marca.all
	end

	def show	

		#@marca=Marca.find(params[:marca_id])
	end

end