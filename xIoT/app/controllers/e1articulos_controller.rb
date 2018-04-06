class E1articulosController < ApplicationController
  before_action :set_e1articulo, only: [:show, :edit, :update, :destroy]

  # GET /e1articulos
  # GET /e1articulos.json
  def index
    @e1articulos = E1articulo.all
  end

  # GET /e1articulos/1
  # GET /e1articulos/1.json
  def show
  end

  # GET /e1articulos/new
  def new
    @e1articulo = E1articulo.new
  end

  # GET /e1articulos/1/edit
  def edit
  end

  # POST /e1articulos
  # POST /e1articulos.json
  def create
    @e1articulo = E1articulo.new(e1articulo_params)

    respond_to do |format|
      if @e1articulo.save
        format.html { redirect_to @e1articulo, notice: 'E1articulo was successfully created.' }
        format.json { render :show, status: :created, location: @e1articulo }
      else
        format.html { render :new }
        format.json { render json: @e1articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1articulos/1
  # PATCH/PUT /e1articulos/1.json
  def update
    respond_to do |format|
      if @e1articulo.update(e1articulo_params)
        format.html { redirect_to @e1articulo, notice: 'E1articulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1articulo }
      else
        format.html { render :edit }
        format.json { render json: @e1articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1articulos/1
  # DELETE /e1articulos/1.json
  def destroy
    @e1articulo.destroy
    respond_to do |format|
      format.html { redirect_to e1articulos_url, notice: 'E1articulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1articulo
      @e1articulo = E1articulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1articulo_params
      params.require(:e1articulo).permit(:sku, :descripcion, :UM, :formato, :familia, :sub_Familia, :ude1, :ude2)
    end
end
