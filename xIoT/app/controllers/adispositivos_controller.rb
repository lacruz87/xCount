class AdispositivosController < ApplicationController
  before_action :set_adispositivo, only: [:show, :edit, :update, :destroy]

  # GET /adispositivos
  # GET /adispositivos.json
  def index
    @adispositivos = Adispositivo.all
  end

  # GET /adispositivos/1
  # GET /adispositivos/1.json
  def show
  end

  # GET /adispositivos/new
  def new
    @adispositivo = Adispositivo.new
  end

  # GET /adispositivos/1/edit
  def edit
  end

  # POST /adispositivos
  # POST /adispositivos.json
  def create
    @adispositivo = Adispositivo.new(adispositivo_params)

    respond_to do |format|
      if @adispositivo.save
        #esto se tiene que hacer a la app de la empresa. para el caso de la POC es localhost

        @e1dispositivo = E1dispositivo.new()
        @E1centro = E1centro.where('nombre=?',@adispositivo.acentro.nombre)[0]
        @e1dispositivo.e1centro=@E1centro

        @E1recurso = E1recurso.where('nombre=?',@adispositivo.arecurso.nombre)[0]        
        @e1dispositivo.e1recurso=@E1recurso

        @e1dispositivo.coreid=@adispositivo.coreid

        @e1dispositivo.save

        format.html { redirect_to @adispositivo, notice: 'Adispositivo was successfully created.' }
        format.json { render :show, status: :created, location: @adispositivo }
      else
        format.html { render :new }
        format.json { render json: @adispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adispositivos/1
  # PATCH/PUT /adispositivos/1.json
  def update
    respond_to do |format|
      if @adispositivo.update(adispositivo_params)
        format.html { redirect_to @adispositivo, notice: 'Adispositivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @adispositivo }
      else
        format.html { render :edit }
        format.json { render json: @adispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adispositivos/1
  # DELETE /adispositivos/1.json
  def destroy
    @adispositivo.destroy
    respond_to do |format|
      format.html { redirect_to adispositivos_url, notice: 'Adispositivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adispositivo
      @adispositivo = Adispositivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adispositivo_params
      params.require(:adispositivo).permit(:coreid, :arecurso_id, :acentro_id, :instalacion_ref, :fabricante_core, :firmware_version, :tipo_dispositivo, :software_version)
    end
end
