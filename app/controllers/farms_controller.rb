class FarmsController < ApplicationController
	def index
		@farms = Farm.all
	end

	def show
		@farm = Farm.find(params[:id])
	end

	def new
		@farm = Farm.new
	end

	def create
		@farm = Farm.create(farm_params)
		redirect_to farm_path(@farm)
	end


	private

	def farm_params
		params.require(:farm).permit(:name, :user_id)
	end
end