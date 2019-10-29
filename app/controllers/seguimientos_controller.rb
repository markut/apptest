class SeguimientosController < ApplicationController
	def new
		@seguimiento = Seguimiento.new
		@seguimiento.requerimiento_id=params[:id]
	end

	def create
		@seguimiento = Seguimiento.create(params_seguimiento)
		@seguimiento.save
		
	end

	def edit
		@seguimiento = Seguimiento.find(params[:id])
		
	end

	def update
		@seguimiento = Seguimiento.find(params[:id])
		@seguimiento.update(params_seguimiento)
		
	end

	private

	def params_seguimiento
		params.require(:seguimiento).permit(:titulo, :descripcion, :requerimiento_id, :estado)
	end
end
