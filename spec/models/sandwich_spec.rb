require 'spec_helper'

describe Sandwich do
  it "has a valid factory" do
  	FactoryGirl.create(:sandwich).should be_valid
  end
  it "is invalid without a sandwich type" do
  	FactoryGirl.build(:sandwich, sandwich_type: nil).should_not be_valid
  end

  it "can send email to user" do
  	sandwich = FactoryGirl.create(:sandwich)
  	sandwich.send_email.should 
  end

end
