class ApiController < ApplicationController
  def particle_in
		@particle = Particle.new(particle_params)

		respond_to do |format|
			if @particle.save
				format.html { redirect_to @particle, notice: 'Particle was successfully created.' }
				format.json { render :show, status: :created, location: @particle }
			else
				format.html { render :new }
				format.json { render json: @particle.errors, status: :unprocessable_entity }
			end
		end

		@sensor = Sensor.where('coreid=?',@particle.coreid)

		if (@sensor.count>=1)

			@event_in = EventIn.new

			fValor1=@particle.data.to_f
			fValor2=@sensor[0].factor.to_f
			fValor=fValor1*fValor2
			@event_in.valor=fValor
			@event_in.coreid=@particle.coreid
			@event_in.published_at_dt=DateTime.parse(Time.parse(@particle.published_at).utc.to_s)
			@event_in.tipo=@sensor[0].tipo
			@event_in.ubicacion=@sensor[0].ubicacion
			@event_in.centro=@sensor[0].centro
			@event_in.almacen=@sensor[0].almacen


			@event_in.save

		end


  end

  def deleteAll
    EventIn.delete_all 
    @out_put="{status:ok}"  
    render :json=>@out_put  
  end

	def particle_params
		params.permit(:event, :name, :data, :coreid, :published_at)
	end




end
