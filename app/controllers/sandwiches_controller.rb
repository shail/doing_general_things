class SandwichesController < ApplicationController
	before_filter :authenticate_user!, :only => [:create, :index]

	def index
		@sandwiches = current_user.sandwiches 
	end


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
