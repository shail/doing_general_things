class SandwichesController < ApplicationController
	def new
		@sandwich = Sandwich.new
	end

	def create
		@sandwich = Sandwich.new(params[:sandwich])
		if @sandwich.save
			flash[:success] = "Your sandwich will arrive shortly"
			redirect_to root_path
		else
			flash[:error] = "NO SANDWICH FOR YOU"
			render 'new'
		end
	end
end
