class SesionesController < ApplicationController
 

  def login
  	usuario_autorizado = Usuario.authenticate(params[:user], params[:contra])
  	if usuario_autorizado
  		puts"Usuario Autorizado"
  	end
  end	

  def home
  end

  def perfil
  end

  def ajustes
  end
end
