class WInsController < ApplicationController
  before_action :set_w_in, only: [:show, :edit, :update, :destroy]

  # GET /w_ins
  # GET /w_ins.json
  def index
    @w_ins = WIn.all
  end

  # GET /w_ins/1
  # GET /w_ins/1.json
  def show
  end

  # GET /w_ins/new
  def new
    @w_in = WIn.new
  end

  # GET /w_ins/1/edit
  def edit
  end

  # POST /w_ins
  # POST /w_ins.json
  def create
    @w_in = WIn.new(w_in_params)

    respond_to do |format|
      if @w_in.save
        format.html { redirect_to @w_in, notice: 'W in was successfully created.' }
        format.json { render :show, status: :created, location: @w_in }
      else
        format.html { render :new }
        format.json { render json: @w_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /w_ins/1
  # PATCH/PUT /w_ins/1.json
  def update
    respond_to do |format|
      if @w_in.update(w_in_params)
        format.html { redirect_to @w_in, notice: 'W in was successfully updated.' }
        format.json { render :show, status: :ok, location: @w_in }
      else
        format.html { render :edit }
        format.json { render json: @w_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /w_ins/1
  # DELETE /w_ins/1.json
  def destroy
    @w_in.destroy
    respond_to do |format|
      format.html { redirect_to w_ins_url, notice: 'W in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w_in
      @w_in = WIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w_in_params
      params.require(:w_in).permit(:event, :name, :data, :coreid, :published_at)
    end
end
