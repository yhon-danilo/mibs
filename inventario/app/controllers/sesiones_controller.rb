class SesionesController < ApplicationController
  before_action :autenticar_usuario, :only => [:home, :perfil, :ajustes]
  before_action :guardar_estado, :only => [:new, :create]
 
  def new

  end



  def create
  	usuario_autorizado = Usuario.authenticate(params[:user], params[:contra])
  	
    if usuario_autorizado
      session[:user_id] = usuario_autorizado.id
  		flash[:alert] = 'Usuario autorizado'
      if session[:user_id]== 1
        
        redirect_to(administrador_usuarios_path)
      else
        
        flash[:alert]= 'usuario operativo'
        redirect_to(usuario_marcas_path(:user_id))
      end
  	else
      flash[:alert] = 'Usuario incorrecto'
      render 'new'
    end
  end	

    def logout
    session[:user]=nil
    render 'new'
  end

  def home
  end

  def perfil
  end

  def ajustes
  end
end
