require 'spec_helper'

describe "Sandwiches" do
  it "emails me when they have made a sandwich" do
  	sandwich = FactoryGirl.create(:sandwich)
  	visit root_path
  	click_link 'Make a Sandwich'
  	click_on 'GIVE ME SANDWICH'
  	current_path.should eq(root_path)
  	page.should have_content("Your sandwich will arrive shortly")
  	last_email.to.should include('make_sandwich@generalthings.com')
  end

  it "doesn't email me when their sandwich hasn't been made" do
  	
  end
end
