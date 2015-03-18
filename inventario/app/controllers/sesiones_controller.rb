class SesionesController < ApplicationController
  before_filter :autenticar_usuario, :only => [:home, :perfil, :ajustes]
  #before_filter :guardar_estado, :only => [:login, :intento_login]
 
  def login

  end

  def logout
    sesion[:user]=nil
    render 'login'
  end

  def intento_login
  	usuario_autorizado = Usuario.authenticate(params[:user], params[:contra])
  	if usuario_autorizado
      sesion[:user_id] = usuario_autorizado.id
  		:flash[:alert] = 'Usuario autorizado'
      redirect_to(action: :home)
  	else
      :flash[:alert] = 'Usuario incorrecto'
      render 'login'
    end
  end	

  def home
  end

  def perfil
  end

  def ajustes
  end
end
