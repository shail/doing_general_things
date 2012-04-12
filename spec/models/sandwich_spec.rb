require 'spec_helper'

describe Sandwich do
  it "has a valid factory" do
  	Factory.create(:sandwich).should be_valid
  end
  it "is invalid without a sandwich type" do
  	Factory.build(:sandwich, type: nil).should_not be_valid
  end

  it "delivers text to user" do
  	sandwich = Factory(:sandwich)
  	sandwich.send_text.should 
  end

end
