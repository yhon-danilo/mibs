class ReferenciaArticulosController < ApplicationController
  before_action :set_referencia_articulo, only: [:show, :edit, :update, :destroy]

  # GET /referencia_articulos
  # GET /referencia_articulos.json
  def index
    @referencia_articulos = ReferenciaArticulo.all
  end

  # GET /referencia_articulos/1
  # GET /referencia_articulos/1.json
  def show
  end

  # GET /referencia_articulos/new
  def new
    @referencia_articulo = ReferenciaArticulo.new
  end

  # GET /referencia_articulos/1/edit
  def edit
  end

  # POST /referencia_articulos
  # POST /referencia_articulos.json
  def create
    @referencia_articulo = ReferenciaArticulo.new(referencia_articulo_params)

    respond_to do |format|
      if @referencia_articulo.save
        format.html { redirect_to @referencia_articulo, notice: 'Referencia articulo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @referencia_articulo }
      else
        format.html { render action: 'new' }
        format.json { render json: @referencia_articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referencia_articulos/1
  # PATCH/PUT /referencia_articulos/1.json
  def update
    respond_to do |format|
      if @referencia_articulo.update(referencia_articulo_params)
        format.html { redirect_to @referencia_articulo, notice: 'Referencia articulo was successfully updated.' }
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
    @referencia_articulo.destroy
    respond_to do |format|
      format.html { redirect_to referencia_articulos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referencia_articulo
      @referencia_articulo = ReferenciaArticulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referencia_articulo_params
      params.require(:referencia_articulo).permit(:nombre_referencia, :cantidad, :valor, :talla, :articulo, :caja_id)
    end
end
