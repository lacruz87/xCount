class E1produccionsController < ApplicationController
  before_action :set_e1produccion, only: [:show, :edit, :update, :destroy]

  # GET /e1produccions
  # GET /e1produccions.json
  def index
    @e1produccions = E1produccion.all
  end

  # GET /e1produccions/1
  # GET /e1produccions/1.json
  def show
  end

  # GET /e1produccions/new
  def new
    @e1produccion = E1produccion.new
  end

  # GET /e1produccions/1/edit
  def edit
  end

  # POST /e1produccions
  # POST /e1produccions.json
  def create
    @e1produccion = E1produccion.new(e1produccion_params)

    respond_to do |format|
      if @e1produccion.save
        format.html { redirect_to @e1produccion, notice: 'E1produccion was successfully created.' }
        format.json { render :show, status: :created, location: @e1produccion }
      else
        format.html { render :new }
        format.json { render json: @e1produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1produccions/1
  # PATCH/PUT /e1produccions/1.json
  def update
    respond_to do |format|
      if @e1produccion.update(e1produccion_params)
        format.html { redirect_to @e1produccion, notice: 'E1produccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1produccion }
      else
        format.html { render :edit }
        format.json { render json: @e1produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1produccions/1
  # DELETE /e1produccions/1.json
  def destroy
    @e1produccion.destroy
    respond_to do |format|
      format.html { redirect_to e1produccions_url, notice: 'E1produccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1produccion
      @e1produccion = E1produccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1produccion_params
      params.require(:e1produccion).permit(:timestamp, :e1recurso_id, :qty, :e1articulo_id, :in_ref, :grupo)
    end
end
