class ApiController < ApplicationController
	def particle_in2
		@w_in = WIn.new(w_in_params)

		@w_in.save

		
		@e1dispositivo = E1dispositivo.where('coreid=?',@w_in.coreid)
		if (@e1dispositivo.count>=1)
			@Jo=JSON.parse(@w_in.data)
			@Jo.each do |data|
				@pin=data['pin']
				@value=data['value']



				@e1evento_dispositivo = E1eventoDispositivo.where('e1dispositivo_id=? and pin=?',@e1dispositivo[0].id,@pin)
				if (@e1evento_dispositivo.count>=1)

					@e1produccion = E1produccion.new

					adjusted_datetime = (DateTime.parse(Time.parse(@w_in.published_at).utc.to_s) - 3.hours).to_datetime
					@e1produccion.timestamp=adjusted_datetime

					@e1produccion.e1recurso=@e1evento_dispositivo[0].e1recurso
					#@out_put=
					fValor1=@value.to_f
					fValor2=@e1evento_dispositivo[0].factor.to_f
					fValor=fValor1*fValor2
					@e1produccion.qty=fValor

					@e1produccion.grupo=@e1evento_dispositivo[0].e1tipo_evento.nombre
					@e1produccion.save



					@e1reporting_prod = E1reportingProd.new

					@e1reporting_prod.Timestamp=adjusted_datetime
					@e1reporting_prod.recurso=@e1produccion.e1recurso.nombre
					@e1reporting_prod.timestamp_5m=round_to_minutes(adjusted_datetime,5)

					@e1reporting_prod.timestamp_10m=round_to_minutes(adjusted_datetime,10)

					@e1reporting_prod.timestamp_30m=round_to_minutes(adjusted_datetime,30)

					@e1reporting_prod.timestamp_1h=adjusted_datetime.beginning_of_hour()

					@e1reporting_prod.timestamp_8h=round_to_minutes(adjusted_datetime,60*8)

					@e1reporting_prod.timestamp_24h=adjusted_datetime.beginning_of_day()

					@e1reporting_prod.timestamp_w=adjusted_datetime.beginning_of_week()

					@e1reporting_prod.timestamp_MM=adjusted_datetime.beginning_of_month()

					@e1reporting_prod.timestamp_Y=adjusted_datetime.year #adjusted_datetime.beginning_of_year()

					@e1reporting_prod.centro=@e1produccion.e1recurso.e1centro.nombre

					@e1reporting_prod.centro=@e1produccion.e1recurso.e1ubicacion.nombre if @e1produccion.e1recurso.e1ubicacion

					@e1reporting_prod.Q=fValor

					ftiempo=(fValor / @e1produccion.e1recurso.productividad_hora)
					@e1reporting_prod.time_Q=ftiempo.minutes

					@e1reporting_prod.categoria=@e1evento_dispositivo[0].e1tipo_evento.nombre					

					@e1reporting_prod.save

				end

			end
			@out_put="{\"status\":\"ok\" }" 
		else
			@out_put="{\"status\":\"coreid no registrado\" }"
		end
		#@out_put=@Jo[0]#{}"{status:ok}"  
		render :json=>@out_put  

		#@sensor = Sensor.where('coreid=?',@particle.coreid)

	end


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

    # Never trust parameters from the scary internet, only allow the white list through.
    def w_in_params
    	params.permit(:event, :name, :data, :coreid, :published_at)
    end

	##
	# rounds a Time or DateTime to the neares 15 minutes
	def round_to_minutes(t,min)
	  interval=min*60
	  rounded = Time.at((t.to_time.to_i / interval).round * interval) #+min.minutes
	  t.is_a?(DateTime) ? rounded.to_datetime : rounded
	end


end
