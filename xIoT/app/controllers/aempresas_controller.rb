class AempresasController < ApplicationController
  before_action :set_aempresa, only: [:show, :edit, :update, :destroy]

  # GET /aempresas
  # GET /aempresas.json
  def index
    @aempresas = Aempresa.all
  end

  # GET /aempresas/1
  # GET /aempresas/1.json
  def show
  end

  # GET /aempresas/new
  def new
    @aempresa = Aempresa.new
  end

  # GET /aempresas/1/edit
  def edit
  end

  # POST /aempresas
  # POST /aempresas.json
  def create
    @aempresa = Aempresa.new(aempresa_params)

    respond_to do |format|
      if @aempresa.save
        #se tiene que crear la app de la empresa nueva. en este caso del POC es el mismo servidor
        @e1empresa = E1empresa.new(aempresa_params)
        @e1empresa.save

        format.html { redirect_to @aempresa, notice: 'Aempresa was successfully created.' }
        format.json { render :show, status: :created, location: @aempresa }

      else
        format.html { render :new }
        format.json { render json: @aempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aempresas/1
  # PATCH/PUT /aempresas/1.json
  def update
    respond_to do |format|
      if @aempresa.update(aempresa_params)
        format.html { redirect_to @aempresa, notice: 'Aempresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @aempresa }
      else
        format.html { render :edit }
        format.json { render json: @aempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aempresas/1
  # DELETE /aempresas/1.json
  def destroy
    @aempresa.destroy
    respond_to do |format|
      format.html { redirect_to aempresas_url, notice: 'Aempresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aempresa
      @aempresa = Aempresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aempresa_params
      params.require(:aempresa).permit(:nombre_empresa, :rut_empresa, :url_app, :url_api, :tipo, :creado_por)
    end
end
