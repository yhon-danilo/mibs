class ArticulosController < ApplicationController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]

  # GET /articulos
  # GET /articulos.json
  def index
    @usuario_actual=session[:user_id]
    @marca=Marca.find(params[:marca_id])
    @articulos = @marca.articulos.all
    
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
  end

  # GET /articulos/new
  def new
    @usuario_actual=session[:user_id]
    @marca=Marca.find(params[:marca_id])
    @articulo = @marca.articulos.build
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @marca=Marca.find(params[:marca_id])
    @articulo = @marca.articulos.build(articulo_params)

    respond_to do |format|
      if @articulo.save
        format.html { redirect_to [@marcas, @articulo], notice: 'Articulo was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@marcas, @articulo ]}
      else
        format.html { render action: 'new' }
        format.json { render json: [@marcas.articulo.errors], status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulos/1
  # PATCH/PUT /articulos/1.json
  def update
    if @articulo.update
      @articulo.save
      redirect_to @articulo
    end     
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    @articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articulo_params
      params.require(:articulo).permit(:nombre_articulo, :cantidad_articulo, :valor_articulo, :talla_articulo, :marca_id, :caja_id)
    end
end
