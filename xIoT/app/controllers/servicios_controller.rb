class ServiciosController < ApplicationController
  def index

		@url="[URL DEL SERVIDOR]/api/particle_in"
		@url2="ec2-18-219-209-88.us-east-2.compute.amazonaws.com/api/particle_in"
  end

  def contador
  	@cuenta=EventIn.sum('valor') 
  	render :layout => false

  end

  def grafico01
  	@prods=EventIn.order('published_at_dt')
  	max_val=EventIn.maximum('valor')
  	max_val=max_val*1.05
  	#@prod_json=@prod.to_json( :only => [:published_at_dt, :valor] )
  	@arr= Array.new 
  	@arr.push(['Hora','Unidades','Capacidad'])
  	@prods.each do |prod|
  		val2=max_val-prod.valor
  		@arr.push([prod.published_at_dt.strftime("%H:%M:%S"),prod.valor,val2])
  	end


  	render :layout => false
  end

  def reporte01
  	@cuenta=EventIn.sum('valor') 

  	@prods=EventIn.order('published_at_dt')
    max_val=1
    begin
    	max_val=EventIn.maximum('valor')
    rescue
      max_val=1
    end

    if(max_val==nil)
      max_val=10
    end

  	max_val=max_val*1.05
  	#@prod_json=@prod.to_json( :only => [:published_at_dt, :valor] )
  	@arr= Array.new 
    @arr2= Array.new 

  	@arr.push(['Hora','Unidades','Capacidad'])

    #@VAL1="{role: 'style' }"
    #@arr2.push(['Hora', 'Cantidad', @VAL1 ])

    val_acumulado=0

  	@prods.each do |prod|
  		val2=max_val-prod.valor
  		@arr.push([prod.published_at_dt.strftime("%H:%M:%S"),prod.valor,val2])

      val_acumulado=val_acumulado+prod.valor
      #[prod.published_at_dt.strftime("%H:%M:%S")
      @arr2.push( [prod.published_at_dt.strftime("%H:%M:%S"), val_acumulado,prod.valor])


  	end


  	#render :layout => false


  end
end
