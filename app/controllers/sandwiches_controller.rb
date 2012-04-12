class SandwichesController < ApplicationController
	def new
		@sandwich = Sandwich.new
	end
end
