class E1recursosController < ApplicationController
  before_action :set_e1recurso, only: [:show, :edit, :update, :destroy]

  # GET /e1recursos
  # GET /e1recursos.json
  def index
    @e1recursos = E1recurso.all
  end

  # GET /e1recursos/1
  # GET /e1recursos/1.json
  def show
  end

  # GET /e1recursos/new
  def new
    @e1recurso = E1recurso.new
  end

  # GET /e1recursos/1/edit
  def edit
  end

  # POST /e1recursos
  # POST /e1recursos.json
  def create
    @e1recurso = E1recurso.new(e1recurso_params)

    respond_to do |format|
      if @e1recurso.save
        format.html { redirect_to @e1recurso, notice: 'E1recurso was successfully created.' }
        format.json { render :show, status: :created, location: @e1recurso }
      else
        format.html { render :new }
        format.json { render json: @e1recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1recursos/1
  # PATCH/PUT /e1recursos/1.json
  def update
    respond_to do |format|
      if @e1recurso.update(e1recurso_params)
        format.html { redirect_to @e1recurso, notice: 'E1recurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1recurso }
      else
        format.html { render :edit }
        format.json { render json: @e1recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1recursos/1
  # DELETE /e1recursos/1.json
  def destroy
    @e1recurso.destroy
    respond_to do |format|
      format.html { redirect_to e1recursos_url, notice: 'E1recurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1recurso
      @e1recurso = E1recurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1recurso_params
      params.require(:e1recurso).permit(:e1centro_id, :nombre, :e1ubicacion_id, :linea, :familia, :tipo, :productividad_hora)
    end
end
