class SesionesController < ApplicationController
  before_action :autenticar_usuario, :only => [:home, :perfil, :ajustes]
  #before_action :guardar_estado, :only => [:new, :create]
 
  def new

  end



  def create
  	usuario_autorizado = Usuario.authenticate(params[:user], params[:contra])
  	if usuario_autorizado
      sesion[:user_id] = usuario_autorizado.id
  		flash[:alert] = 'Usuario autorizado'
      if sesion[:user_id]= 1
        redirect_to(administrador_usuarios_path)
      else
        flash[:alert]= 'usuario operativo'
      end
  	else
      flash[:alert] = 'Usuario incorrecto'
      render 'new'
    end
  end	

    def logout
    sesion[:user]=nil
    render 'new'
  end

  def home
  end

  def perfil
  end

  def ajustes
  end
end
