class E1ubicacionsController < ApplicationController
  before_action :set_e1ubicacion, only: [:show, :edit, :update, :destroy]

  # GET /e1ubicacions
  # GET /e1ubicacions.json
  def index
    @e1ubicacions = E1ubicacion.all
  end

  # GET /e1ubicacions/1
  # GET /e1ubicacions/1.json
  def show
  end

  # GET /e1ubicacions/new
  def new
    @e1ubicacion = E1ubicacion.new
  end

  # GET /e1ubicacions/1/edit
  def edit
  end

  # POST /e1ubicacions
  # POST /e1ubicacions.json
  def create
    @e1ubicacion = E1ubicacion.new(e1ubicacion_params)

    respond_to do |format|
      if @e1ubicacion.save
        format.html { redirect_to @e1ubicacion, notice: 'E1ubicacion was successfully created.' }
        format.json { render :show, status: :created, location: @e1ubicacion }
      else
        format.html { render :new }
        format.json { render json: @e1ubicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1ubicacions/1
  # PATCH/PUT /e1ubicacions/1.json
  def update
    respond_to do |format|
      if @e1ubicacion.update(e1ubicacion_params)
        format.html { redirect_to @e1ubicacion, notice: 'E1ubicacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1ubicacion }
      else
        format.html { render :edit }
        format.json { render json: @e1ubicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1ubicacions/1
  # DELETE /e1ubicacions/1.json
  def destroy
    @e1ubicacion.destroy
    respond_to do |format|
      format.html { redirect_to e1ubicacions_url, notice: 'E1ubicacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1ubicacion
      @e1ubicacion = E1ubicacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1ubicacion_params
      params.require(:e1ubicacion).permit(:nombre, :almacen)
    end
end
