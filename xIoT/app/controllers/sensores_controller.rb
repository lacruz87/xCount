class SensoresController < ApplicationController
  before_action :set_sensor, only: [:show, :edit, :update, :destroy]

  # GET /sensores
  # GET /sensores.json
  def index
    @sensores = Sensor.all
  end

  # GET /sensores/1
  # GET /sensores/1.json
  def show
  end

  # GET /sensores/new
  def new
    @sensor = Sensor.new
  end

  # GET /sensores/1/edit
  def edit
  end

  # POST /sensores
  # POST /sensores.json
  def create
    @sensor = Sensor.new(sensor_params)

    respond_to do |format|
      if @sensor.save
        format.html { redirect_to @sensor, notice: 'Sensor was successfully created.' }
        format.json { render :show, status: :created, location: @sensor }
      else
        format.html { render :new }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensores/1
  # PATCH/PUT /sensores/1.json
  def update
    respond_to do |format|
      if @sensor.update(sensor_params)
        format.html { redirect_to @sensor, notice: 'Sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor }
      else
        format.html { render :edit }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensores/1
  # DELETE /sensores/1.json
  def destroy
    @sensor.destroy
    respond_to do |format|
      format.html { redirect_to sensores_url, notice: 'Sensor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_params
      params.require(:sensor).permit(:coreid, :ubicacion, :factor, :tipo, :ultima_conexion, :empresa_id, :centro, :almacen)
    end
end
