class E1reportingProdsController < ApplicationController
  before_action :set_e1reporting_prod, only: [:show, :edit, :update, :destroy]

  # GET /e1reporting_prods
  # GET /e1reporting_prods.json
  def index
    @e1reporting_prods = E1reportingProd.all
  end

  # GET /e1reporting_prods/1
  # GET /e1reporting_prods/1.json
  def show
  end

  # GET /e1reporting_prods/new
  def new
    @e1reporting_prod = E1reportingProd.new
  end

  # GET /e1reporting_prods/1/edit
  def edit
  end

  # POST /e1reporting_prods
  # POST /e1reporting_prods.json
  def create
    @e1reporting_prod = E1reportingProd.new(e1reporting_prod_params)

    respond_to do |format|
      if @e1reporting_prod.save
        format.html { redirect_to @e1reporting_prod, notice: 'E1reporting prod was successfully created.' }
        format.json { render :show, status: :created, location: @e1reporting_prod }
      else
        format.html { render :new }
        format.json { render json: @e1reporting_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1reporting_prods/1
  # PATCH/PUT /e1reporting_prods/1.json
  def update
    respond_to do |format|
      if @e1reporting_prod.update(e1reporting_prod_params)
        format.html { redirect_to @e1reporting_prod, notice: 'E1reporting prod was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1reporting_prod }
      else
        format.html { render :edit }
        format.json { render json: @e1reporting_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1reporting_prods/1
  # DELETE /e1reporting_prods/1.json
  def destroy
    @e1reporting_prod.destroy
    respond_to do |format|
      format.html { redirect_to e1reporting_prods_url, notice: 'E1reporting prod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1reporting_prod
      @e1reporting_prod = E1reportingProd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1reporting_prod_params
      params.require(:e1reporting_prod).permit(:Timestamp, :recurso, :centro, :ubicacion, :timestamp_5m, :timestamp_10m, :timestamp_30m, :timestamp_1h, :timestamp_8h, :timestamp_24h, :timestamp_w, :timestamp_MM, :timestamp_Y, :Q, :time_Q, :categoria, :articulo, :familia, :sub_familia, :referencia)
    end
end
