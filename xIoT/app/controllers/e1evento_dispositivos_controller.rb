class E1eventoDispositivosController < ApplicationController
  before_action :set_e1evento_dispositivo, only: [:show, :edit, :update, :destroy]

  # GET /e1evento_dispositivos
  # GET /e1evento_dispositivos.json
  def index
    @e1evento_dispositivos = E1eventoDispositivo.all
  end

  # GET /e1evento_dispositivos/1
  # GET /e1evento_dispositivos/1.json
  def show
  end

  # GET /e1evento_dispositivos/new
  def new
    @e1evento_dispositivo = E1eventoDispositivo.new
  end

  # GET /e1evento_dispositivos/1/edit
  def edit
  end

  # POST /e1evento_dispositivos
  # POST /e1evento_dispositivos.json
  def create
    @e1evento_dispositivo = E1eventoDispositivo.new(e1evento_dispositivo_params)

    respond_to do |format|
      if @e1evento_dispositivo.save
        format.html { redirect_to @e1evento_dispositivo, notice: 'E1evento dispositivo was successfully created.' }
        format.json { render :show, status: :created, location: @e1evento_dispositivo }
      else
        format.html { render :new }
        format.json { render json: @e1evento_dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1evento_dispositivos/1
  # PATCH/PUT /e1evento_dispositivos/1.json
  def update
    respond_to do |format|
      if @e1evento_dispositivo.update(e1evento_dispositivo_params)
        format.html { redirect_to @e1evento_dispositivo, notice: 'E1evento dispositivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1evento_dispositivo }
      else
        format.html { render :edit }
        format.json { render json: @e1evento_dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1evento_dispositivos/1
  # DELETE /e1evento_dispositivos/1.json
  def destroy
    @e1evento_dispositivo.destroy
    respond_to do |format|
      format.html { redirect_to e1evento_dispositivos_url, notice: 'E1evento dispositivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1evento_dispositivo
      @e1evento_dispositivo = E1eventoDispositivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1evento_dispositivo_params
      params.require(:e1evento_dispositivo).permit(:e1dispositivo_id, :pin, :UM, :factor, :e1recurso_id, :e1tipo_evento_id, :sub_tipo_evento, :clasificacion_evento)
    end
end
