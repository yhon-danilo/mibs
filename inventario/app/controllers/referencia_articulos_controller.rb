class ReferenciaArticulosController < ApplicationController
  before_action :set_referencia_articulo, only: [:show, :edit, :update, :destroy, :compra_articulo]

  # GET /referencia_articulos
  # GET /referencia_articulos.json

  def comprar_articulo
    @referencia_articulo=ReferenciaArticulo.find(params[:id])
    @referencia_articulo.guardar_compra
    redirect_to articulo_referencia_articulos_path(@articulo)
  end


  def index
    @usuario_actual = session[:user_id]

    @articulo = Articulo.find(params[:articulo_id])
    @referencia_articulos = @articulo.referencia_articulos.all

    @marca= @articulo.marca_id
  end

  # GET /referencia_articulos/1
  # GET /referencia_articulos/1.json
  def show
  end

  # GET /referencia_articulos/new
  def new
    @articulo = Articulo.find(params[:articulo_id])
    @referencia_articulo = @articulo.referencia_articulos.build
  end

  # GET /referencia_articulos/1/edit
  def edit
  end

  # POST /referencia_articulos
  # POST /referencia_articulos.json
  def create
    @articulo = Articulo.find(params[:articulo_id])
    @referencia_articulo = @articulo.referencia_articulos.build(referencia_articulo_params)

    respond_to do |format|
      if @referencia_articulo.save
        format.html { redirect_to [@articulo, @referencia_articulo], notice: 'Referencia articulo was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@articulo, @referencia_articulo] }
      else
        format.html { render action: 'new' }
        format.json { render json: @referencia_articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referencia_articulos/1
  # PATCH/PUT /referencia_articulos/1.json
  def update
    @articulo = Articulo.find(params[:articulo_id])
    @referencia_articulos = @articulo.referencia_articulos.find(params[:id])
    respond_to do |format|

      if @referencia_articulo.update(referencia_articulo_params)
        format.html { redirect_to [@articulo, @referencia_articulo], notice: 'Referencia articulo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @referencia_articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referencia_articulos/1
  # DELETE /referencia_articulos/1.json
  def destroy
    @articulo = Articulo.find(params[:articulo_id])
    @referencia_articulos = @articulo.referencia_articulos.find(params[:id])
    @referencia_articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulo_referencia_articulos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referencia_articulo
      @usuario_actual= session[:user_id]
      @articulo=Articulo.find(params[:articulo_id])
      @referencia_articulo = @articulo.referencia_articulos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referencia_articulo_params
      params.require(:referencia_articulo).permit(:nombre_referencia, :valor, :costo_referencia, :articulo_id,
        tallas_attributes: [:talla_referencia], colors_attributes: [:color_referencia])
    end
end
