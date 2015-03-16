class Administrador::UsuariosController < ApplicationController
  def new
    @usuario=Usuario.new
  end

  def create
    @usuario=Usuario.new(parametros_usuarios)
    if @usuario.save
      flash[:notice]="Se ha creado el usuario"
    else
      flash[:notice]="No se creo el usuario. Revise por favor"
    end
    
      render "new"
  end

  def edit    
    @usuario=Usuario.find(params[:id])
  end

  def update
    @usuario=Usuario.find(params[:id])
    if @usuario.update(parametros_usuarios)
      @usuario.save
      redirect_to administrador_usuarios_path, notice: "El usuario se actualizo"
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
