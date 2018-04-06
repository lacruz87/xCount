class WsubscribesController < ApplicationController
  before_action :set_wsubscribe, only: [:show, :edit, :update, :destroy]

  # GET /wsubscribes
  # GET /wsubscribes.json
  def index
    @wsubscribes = Wsubscribe.all
  end

  # GET /wsubscribes/1
  # GET /wsubscribes/1.json
  def show
  end

  # GET /wsubscribes/new
  def new
    @wsubscribe = Wsubscribe.new
  end

  # GET /wsubscribes/1/edit
  def edit
  end

  # POST /wsubscribes
  # POST /wsubscribes.json
  def create
    @wsubscribe = Wsubscribe.new(wsubscribe_params)

    respond_to do |format|
      if @wsubscribe.save
        format.html { redirect_to @wsubscribe, notice: 'Wsubscribe was successfully created.' }
        format.json { render :show, status: :created, location: @wsubscribe }
      else
        format.html { render :new }
        format.json { render json: @wsubscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wsubscribes/1
  # PATCH/PUT /wsubscribes/1.json
  def update
    respond_to do |format|
      if @wsubscribe.update(wsubscribe_params)
        format.html { redirect_to @wsubscribe, notice: 'Wsubscribe was successfully updated.' }
        format.json { render :show, status: :ok, location: @wsubscribe }
      else
        format.html { render :edit }
        format.json { render json: @wsubscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wsubscribes/1
  # DELETE /wsubscribes/1.json
  def destroy
    @wsubscribe.destroy
    respond_to do |format|
      format.html { redirect_to wsubscribes_url, notice: 'Wsubscribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wsubscribe
      @wsubscribe = Wsubscribe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wsubscribe_params
      params.require(:wsubscribe).permit(:coreid, :id_empresa, :empresa_nombre, :empresa_app_url)
    end
end
