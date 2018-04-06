class AcentrosController < ApplicationController
  before_action :set_acentro, only: [:show, :edit, :update, :destroy]

  # GET /acentros
  # GET /acentros.json
  def index
    @acentros = Acentro.all
  end

  # GET /acentros/1
  # GET /acentros/1.json
  def show
  end

  # GET /acentros/new
  def new
    @acentro = Acentro.new
  end

  # GET /acentros/1/edit
  def edit
  end

  # POST /acentros
  # POST /acentros.json
  def create
    @acentro = Acentro.new(acentro_params)

    respond_to do |format|
      if @acentro.save
        #esto se tiene que hacer a la app de la empresa. para el caso de la POC es localhost

        @e1centro = E1centro.new()
        @E1empresa = E1empresa.where('nombre_empresa=?',@acentro.aempresa.nombre_empresa)[0]
        @e1centro.e1empresa=@E1empresa
        @e1centro.nombre=@acentro.nombre
        @e1centro.descripcion=@acentro.descripcion
        @e1centro.direccion=@acentro.direccion
        @e1centro.numero=@acentro.numero
        @e1centro.comuna=@acentro.comuna
        @e1centro.region=@acentro.region
        @e1centro.lat=@acentro.lat
        @e1centro.lng=@acentro.lng

        @e1centro.save

        format.html { redirect_to @acentro, notice: 'Acentro was successfully created.' }
        format.json { render :show, status: :created, location: @acentro }
      else
        format.html { render :new }
        format.json { render json: @acentro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acentros/1
  # PATCH/PUT /acentros/1.json
  def update
    respond_to do |format|
      if @acentro.update(acentro_params)
        format.html { redirect_to @acentro, notice: 'Acentro was successfully updated.' }
        format.json { render :show, status: :ok, location: @acentro }
      else
        format.html { render :edit }
        format.json { render json: @acentro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acentros/1
  # DELETE /acentros/1.json
  def destroy
    @acentro.destroy
    respond_to do |format|
      format.html { redirect_to acentros_url, notice: 'Acentro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acentro
      @acentro = Acentro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acentro_params
      params.require(:acentro).permit(:aempresa_id, :nombre, :descripcion, :direccion, :numero, :comuna, :region, :lat, :lng)
    end


end
