class E1planprodsController < ApplicationController
  before_action :set_e1planprod, only: [:show, :edit, :update, :destroy]

  # GET /e1planprods
  # GET /e1planprods.json
  def index
    @e1planprods = E1planprod.all
  end

  # GET /e1planprods/1
  # GET /e1planprods/1.json
  def show
  end

  # GET /e1planprods/new
  def new
    @e1planprod = E1planprod.new
  end

  # GET /e1planprods/1/edit
  def edit
  end

  # POST /e1planprods
  # POST /e1planprods.json
  def create
    @e1planprod = E1planprod.new(e1planprod_params)

    respond_to do |format|
      if @e1planprod.save
        format.html { redirect_to @e1planprod, notice: 'E1planprod was successfully created.' }
        format.json { render :show, status: :created, location: @e1planprod }
      else
        format.html { render :new }
        format.json { render json: @e1planprod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1planprods/1
  # PATCH/PUT /e1planprods/1.json
  def update
    respond_to do |format|
      if @e1planprod.update(e1planprod_params)
        format.html { redirect_to @e1planprod, notice: 'E1planprod was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1planprod }
      else
        format.html { render :edit }
        format.json { render json: @e1planprod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1planprods/1
  # DELETE /e1planprods/1.json
  def destroy
    @e1planprod.destroy
    respond_to do |format|
      format.html { redirect_to e1planprods_url, notice: 'E1planprod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1planprod
      @e1planprod = E1planprod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1planprod_params
      params.require(:e1planprod).permit(:e1articulo_id, :e1recurso_id, :inicio_plan, :fin_plan, :orden_trabajo, :q_plan, :inicio_real, :fin_real)
    end
end
