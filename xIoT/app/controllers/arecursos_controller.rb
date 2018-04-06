class ArecursosController < ApplicationController
  before_action :set_arecurso, only: [:show, :edit, :update, :destroy]

  # GET /arecursos
  # GET /arecursos.json
  def index
    @arecursos = Arecurso.all
  end

  # GET /arecursos/1
  # GET /arecursos/1.json
  def show
  end

  # GET /arecursos/new
  def new
    @arecurso = Arecurso.new
  end

  # GET /arecursos/1/edit
  def edit
  end

  # POST /arecursos
  # POST /arecursos.json
  def create
    @arecurso = Arecurso.new(arecurso_params)

    respond_to do |format|
      if @arecurso.save

        #esto se tiene que hacer a la app de la empresa. para el caso de la POC es localhost

        @e1recurso = E1recurso.new()
        @E1centro = E1centro.where('nombre=?',@arecurso.acentro.nombre)[0]
        @e1recurso.e1centro=@E1centro
        @e1recurso.nombre=@arecurso.nombre

        @e1recurso.save

        format.html { redirect_to @arecurso, notice: 'Arecurso was successfully created.' }
        format.json { render :show, status: :created, location: @arecurso }
      else
        format.html { render :new }
        format.json { render json: @arecurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arecursos/1
  # PATCH/PUT /arecursos/1.json
  def update
    respond_to do |format|
      if @arecurso.update(arecurso_params)
        format.html { redirect_to @arecurso, notice: 'Arecurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @arecurso }
      else
        format.html { render :edit }
        format.json { render json: @arecurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arecursos/1
  # DELETE /arecursos/1.json
  def destroy
    @arecurso.destroy
    respond_to do |format|
      format.html { redirect_to arecursos_url, notice: 'Arecurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arecurso
      @arecurso = Arecurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arecurso_params
      params.require(:arecurso).permit(:acentro_id, :nombre)
    end
end
