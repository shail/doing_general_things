require 'spec_helper'

describe SandwichesController do
	describe "GET #new" do
		it "assigns a new Sandwich to @sandwich" do
			get :new
			assigns(:sandwich).type.should
		end
		it "renders the :new template" do
			get :new
			response.should render_template :new
		end
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new sandwich in the database" do
				expect{
					post :create, sandwich: Factory.attributes_for(:sandwich)
				}.to change(Sandwich, :count).by(1)
			end
			it "redirects to the home page" do
				post :create, sandwich: Factory.attributes_for(:sandwich)
				response.should redirect_to root_path
			end
		end

		context "with invalid attributes" do
			it "does not save the new sandwich in the database" do
				expect{
				  post :create, sandwich: Factory.attributes_for(:invalid_sandwich)
				}.to_not change(Sandwich, :count)
			end
			it "re-renders the :new template" do
				post :create, sandwich: Factory.attributes_for(:invalid_sandwich)
				response.should render_template :new
			end
		end
	end
end
