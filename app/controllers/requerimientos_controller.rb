
class RequerimientosController < ApplicationController
before_action :authenticate_user!
	def index
		@requerimiento = Requerimiento.all
	end

	def new
		@requerimiento = Requerimiento.new	
	end

	def create
		@requerimiento = Requerimiento.new (params_para_requerimiento)
		@requerimiento.save

		redirect_to @requerimiento
	end

	def show
		@requerimiento = Requerimiento.find(params[:id])
	end

	def edit
		@requerimiento = Requerimiento.find(params[:id])
	end

	def update
		@requerimiento = Requerimiento.find(params[:id])
		@requerimiento.update(params_para_requerimiento)

		redirect_to @requerimiento
	end

	def destroy
		@requerimiento = Requerimiento.find(params[:id])
		@requerimiento.destroy

		redirect_to requerimientos_path
	end



	private
	def params_para_requerimiento
		params.require(:requerimiento).permit(:usuario_id, :asunto, :notas, :fecha)
	end
end
