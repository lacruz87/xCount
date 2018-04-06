class AeventoDispositivosController < ApplicationController
  before_action :set_aevento_dispositivo, only: [:show, :edit, :update, :destroy]

  # GET /aevento_dispositivos
  # GET /aevento_dispositivos.json
  def index
    @aevento_dispositivos = AeventoDispositivo.all
  end

  # GET /aevento_dispositivos/1
  # GET /aevento_dispositivos/1.json
  def show
  end

  # GET /aevento_dispositivos/new
  def new
    @aevento_dispositivo = AeventoDispositivo.new
  end

  # GET /aevento_dispositivos/1/edit
  def edit
  end

  # POST /aevento_dispositivos
  # POST /aevento_dispositivos.json
  def create
    @aevento_dispositivo = AeventoDispositivo.new(aevento_dispositivo_params)

    respond_to do |format|
      if @aevento_dispositivo.save
        #esto se tiene que hacer a la app de la empresa. para el caso de la POC es localhost

        @e1evento_dispositivo = E1eventoDispositivo.new()
        @E1dispositivo = E1dispositivo.where('coreid=?',@aevento_dispositivo.adispositivo.coreid)[0]
        @e1evento_dispositivo.e1dispositivo=@E1dispositivo

        @E1recurso = E1recurso.where('nombre=?',@aevento_dispositivo.arecurso.nombre)[0]        
        @e1evento_dispositivo.e1recurso=@E1recurso

        @E1TipoEvento = E1tipoEvento.where('nombre=?',@aevento_dispositivo.atipo_evento.nombre)[0]        
        @e1evento_dispositivo.e1tipo_evento=@E1TipoEvento

        @e1evento_dispositivo.pin=@aevento_dispositivo.pin
        @e1evento_dispositivo.UM=@aevento_dispositivo.UM
        @e1evento_dispositivo.factor=@aevento_dispositivo.factor
        @e1evento_dispositivo.sub_tipo_evento=@aevento_dispositivo.sub_tipo_evento


        @e1evento_dispositivo.save




        format.html { redirect_to @aevento_dispositivo, notice: 'Aevento dispositivo was successfully created.' }
        format.json { render :show, status: :created, location: @aevento_dispositivo }
      else
        format.html { render :new }
        format.json { render json: @aevento_dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aevento_dispositivos/1
  # PATCH/PUT /aevento_dispositivos/1.json
  def update
    respond_to do |format|
      if @aevento_dispositivo.update(aevento_dispositivo_params)
        format.html { redirect_to @aevento_dispositivo, notice: 'Aevento dispositivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @aevento_dispositivo }
      else
        format.html { render :edit }
        format.json { render json: @aevento_dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aevento_dispositivos/1
  # DELETE /aevento_dispositivos/1.json
  def destroy
    @aevento_dispositivo.destroy
    respond_to do |format|
      format.html { redirect_to aevento_dispositivos_url, notice: 'Aevento dispositivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aevento_dispositivo
      @aevento_dispositivo = AeventoDispositivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aevento_dispositivo_params
      params.require(:aevento_dispositivo).permit(:adispositivo_id, :pin, :UM, :factor, :arecurso_id, :atipo_evento_id, :sub_tipo_evento)
    end
end
