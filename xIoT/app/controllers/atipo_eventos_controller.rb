class AtipoEventosController < ApplicationController
  before_action :set_atipo_evento, only: [:show, :edit, :update, :destroy]

  # GET /atipo_eventos
  # GET /atipo_eventos.json
  def index
    @atipo_eventos = AtipoEvento.all
  end

  # GET /atipo_eventos/1
  # GET /atipo_eventos/1.json
  def show
  end

  # GET /atipo_eventos/new
  def new
    @atipo_evento = AtipoEvento.new
  end

  # GET /atipo_eventos/1/edit
  def edit
  end

  # POST /atipo_eventos
  # POST /atipo_eventos.json
  def create
    @atipo_evento = AtipoEvento.new(atipo_evento_params)

    respond_to do |format|
      if @atipo_evento.save
        #esto se tiene que hacer a la app de la empresa. para el caso de la POC es localhost

        @e1tipo_evento = E1tipoEvento.new()

        @e1tipo_evento.nombre=@atipo_evento.nombre
        @e1tipo_evento.ruta_bd=@atipo_evento.ruta_bd
        @e1tipo_evento.save

        format.html { redirect_to @atipo_evento, notice: 'Atipo evento was successfully created.' }
        format.json { render :show, status: :created, location: @atipo_evento }
      else
        format.html { render :new }
        format.json { render json: @atipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atipo_eventos/1
  # PATCH/PUT /atipo_eventos/1.json
  def update
    respond_to do |format|
      if @atipo_evento.update(atipo_evento_params)
        format.html { redirect_to @atipo_evento, notice: 'Atipo evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @atipo_evento }
      else
        format.html { render :edit }
        format.json { render json: @atipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atipo_eventos/1
  # DELETE /atipo_eventos/1.json
  def destroy
    @atipo_evento.destroy
    respond_to do |format|
      format.html { redirect_to atipo_eventos_url, notice: 'Atipo evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atipo_evento
      @atipo_evento = AtipoEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atipo_evento_params
      params.require(:atipo_evento).permit(:nombre, :ruta_bd)
    end
end
