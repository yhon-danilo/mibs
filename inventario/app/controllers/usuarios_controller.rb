class UsuariosController < ApplicationController
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
    render new
      
  end

  def edit
    @usuario.find(:usuario[:id])
  end

  def update
  end

  def delete
  end

  def show
    @usuario=Usuario.all
  end

  def parametros_usuarios
    params.require(:usuario).permit(:nombre_usuario, :contrasena, :nombre, :apellido)
  end
end
