class E1dispositivosController < ApplicationController
  before_action :set_e1dispositivo, only: [:show, :edit, :update, :destroy]

  # GET /e1dispositivos
  # GET /e1dispositivos.json
  def index
    @e1dispositivos = E1dispositivo.all
  end

  # GET /e1dispositivos/1
  # GET /e1dispositivos/1.json
  def show
  end

  # GET /e1dispositivos/new
  def new
    @e1dispositivo = E1dispositivo.new
  end

  # GET /e1dispositivos/1/edit
  def edit
  end

  # POST /e1dispositivos
  # POST /e1dispositivos.json
  def create
    @e1dispositivo = E1dispositivo.new(e1dispositivo_params)

    respond_to do |format|
      if @e1dispositivo.save
        format.html { redirect_to @e1dispositivo, notice: 'E1dispositivo was successfully created.' }
        format.json { render :show, status: :created, location: @e1dispositivo }
      else
        format.html { render :new }
        format.json { render json: @e1dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1dispositivos/1
  # PATCH/PUT /e1dispositivos/1.json
  def update
    respond_to do |format|
      if @e1dispositivo.update(e1dispositivo_params)
        format.html { redirect_to @e1dispositivo, notice: 'E1dispositivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1dispositivo }
      else
        format.html { render :edit }
        format.json { render json: @e1dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1dispositivos/1
  # DELETE /e1dispositivos/1.json
  def destroy
    @e1dispositivo.destroy
    respond_to do |format|
      format.html { redirect_to e1dispositivos_url, notice: 'E1dispositivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1dispositivo
      @e1dispositivo = E1dispositivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1dispositivo_params
      params.require(:e1dispositivo).permit(:coreid, :e1recurso_id, :e1centro_id, :instalacion_ref, :fabricante_core, :firmware_version, :tipo_dispositivo, :software_version)
    end
end
