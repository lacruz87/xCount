class E1centrosController < ApplicationController
  before_action :set_e1centro, only: [:show, :edit, :update, :destroy]

  # GET /e1centros
  # GET /e1centros.json
  def index
    @e1centros = E1centro.all
  end

  # GET /e1centros/1
  # GET /e1centros/1.json
  def show
  end

  # GET /e1centros/new
  def new
    @e1centro = E1centro.new
  end

  # GET /e1centros/1/edit
  def edit
  end

  # POST /e1centros
  # POST /e1centros.json
  def create
    @e1centro = E1centro.new(e1centro_params)

    respond_to do |format|
      if @e1centro.save
        format.html { redirect_to @e1centro, notice: 'E1centro was successfully created.' }
        format.json { render :show, status: :created, location: @e1centro }
      else
        format.html { render :new }
        format.json { render json: @e1centro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1centros/1
  # PATCH/PUT /e1centros/1.json
  def update
    respond_to do |format|
      if @e1centro.update(e1centro_params)
        format.html { redirect_to @e1centro, notice: 'E1centro was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1centro }
      else
        format.html { render :edit }
        format.json { render json: @e1centro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1centros/1
  # DELETE /e1centros/1.json
  def destroy
    @e1centro.destroy
    respond_to do |format|
      format.html { redirect_to e1centros_url, notice: 'E1centro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1centro
      @e1centro = E1centro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1centro_params
      params.require(:e1centro).permit(:e1empresa_id, :nombre, :descripcion, :direccion, :numero, :comuna, :region, :lat, :lng)
    end
end
