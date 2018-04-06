class E1empresasController < ApplicationController
  before_action :set_e1empresa, only: [:show, :edit, :update, :destroy]

  # GET /e1empresas
  # GET /e1empresas.json
  def index
    @e1empresas = E1empresa.all
  end

  # GET /e1empresas/1
  # GET /e1empresas/1.json
  def show
  end

  # GET /e1empresas/new
  def new
    @e1empresa = E1empresa.new
  end

  # GET /e1empresas/1/edit
  def edit
  end

  # POST /e1empresas
  # POST /e1empresas.json
  def create
    @e1empresa = E1empresa.new(e1empresa_params)

    respond_to do |format|
      if @e1empresa.save
        format.html { redirect_to @e1empresa, notice: 'E1empresa was successfully created.' }
        format.json { render :show, status: :created, location: @e1empresa }
      else
        format.html { render :new }
        format.json { render json: @e1empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1empresas/1
  # PATCH/PUT /e1empresas/1.json
  def update
    respond_to do |format|
      if @e1empresa.update(e1empresa_params)
        format.html { redirect_to @e1empresa, notice: 'E1empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1empresa }
      else
        format.html { render :edit }
        format.json { render json: @e1empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1empresas/1
  # DELETE /e1empresas/1.json
  def destroy
    @e1empresa.destroy
    respond_to do |format|
      format.html { redirect_to e1empresas_url, notice: 'E1empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1empresa
      @e1empresa = E1empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1empresa_params
      params.require(:e1empresa).permit(:nombre_empresa, :rut_empresa, :url_app, :url_api, :tipo, :creado_por)
    end
end
