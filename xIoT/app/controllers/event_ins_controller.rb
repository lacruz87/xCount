class EventInsController < ApplicationController
  before_action :set_event_in, only: [:show, :edit, :update, :destroy]

  # GET /event_ins
  # GET /event_ins.json
  def index
    @event_ins = EventIn.all
  end

  # GET /event_ins/1
  # GET /event_ins/1.json
  def show
  end

  # GET /event_ins/new
  def new
    @event_in = EventIn.new
  end

  # GET /event_ins/1/edit
  def edit
  end

  # POST /event_ins
  # POST /event_ins.json
  def create
    @event_in = EventIn.new(event_in_params)

    respond_to do |format|
      if @event_in.save
        format.html { redirect_to @event_in, notice: 'Event in was successfully created.' }
        format.json { render :show, status: :created, location: @event_in }
      else
        format.html { render :new }
        format.json { render json: @event_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_ins/1
  # PATCH/PUT /event_ins/1.json
  def update
    respond_to do |format|
      if @event_in.update(event_in_params)
        format.html { redirect_to @event_in, notice: 'Event in was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_in }
      else
        format.html { render :edit }
        format.json { render json: @event_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_ins/1
  # DELETE /event_ins/1.json
  def destroy
    @event_in.destroy
    respond_to do |format|
      format.html { redirect_to event_ins_url, notice: 'Event in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_in
      @event_in = EventIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_in_params
      params.require(:event_in).permit(:valor, :coreid, :published_at_dt, :tipo, :ubicacion, :centro, :almacen)
    end
end
