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
  end

	def particle_params
		params.permit(:event, :name, :data, :coreid, :published_at)
	end




end
