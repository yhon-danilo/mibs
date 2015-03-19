class Administrador::UsuariosController < ApplicationController
  #before_action :guardar_estado, :only => [:new, :create]

  def new
    @usuario=Usuario.new
  end

  def create
    @usuario=Usuario.new(parametros_usuarios)
    if @usuario.save
      flash[:notice]="Se ha creado el usuario"
      redirect_to administrador_usuario_path(@usuario)
    else
      flash[:notice]="No se creo el usuario. Revise por favor"
      render "new"
    end
    
      
  end

  def edit    
    @usuario=Usuario.find(params[:id])
  end

  def update
    @usuario=Usuario.find(params[:id])
    if @usuario.update(parametros_usuarios)
      redirect_to administrador_usuario_path(@usuario), notice: "El usuario se actualizo"
    end
  end

  def destroy
    @usuario=Usuario.find(params[:id])
    if @usuario
      @usuario.destroy
      redirect_to administrador_usuarios_path, notice: "Usuario eliminado"
    end
  end

  def index
    @usuario=Usuario.all
  end

  def show
    @usuario=Usuario.find(params[:id])
  end

  def parametros_usuarios
    params.require(:usuario).permit(:nombre_usuario, :contrasena, :nombre, :apellido)
  end
end
