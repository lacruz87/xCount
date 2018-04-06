class E1tipoEventosController < ApplicationController
  before_action :set_e1tipo_evento, only: [:show, :edit, :update, :destroy]

  # GET /e1tipo_eventos
  # GET /e1tipo_eventos.json
  def index
    @e1tipo_eventos = E1tipoEvento.all
  end

  # GET /e1tipo_eventos/1
  # GET /e1tipo_eventos/1.json
  def show
  end

  # GET /e1tipo_eventos/new
  def new
    @e1tipo_evento = E1tipoEvento.new
  end

  # GET /e1tipo_eventos/1/edit
  def edit
  end

  # POST /e1tipo_eventos
  # POST /e1tipo_eventos.json
  def create
    @e1tipo_evento = E1tipoEvento.new(e1tipo_evento_params)

    respond_to do |format|
      if @e1tipo_evento.save
        format.html { redirect_to @e1tipo_evento, notice: 'E1tipo evento was successfully created.' }
        format.json { render :show, status: :created, location: @e1tipo_evento }
      else
        format.html { render :new }
        format.json { render json: @e1tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e1tipo_eventos/1
  # PATCH/PUT /e1tipo_eventos/1.json
  def update
    respond_to do |format|
      if @e1tipo_evento.update(e1tipo_evento_params)
        format.html { redirect_to @e1tipo_evento, notice: 'E1tipo evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @e1tipo_evento }
      else
        format.html { render :edit }
        format.json { render json: @e1tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e1tipo_eventos/1
  # DELETE /e1tipo_eventos/1.json
  def destroy
    @e1tipo_evento.destroy
    respond_to do |format|
      format.html { redirect_to e1tipo_eventos_url, notice: 'E1tipo evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e1tipo_evento
      @e1tipo_evento = E1tipoEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def e1tipo_evento_params
      params.require(:e1tipo_evento).permit(:nombre, :ruta_bd)
    end
end
