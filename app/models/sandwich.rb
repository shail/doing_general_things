class Sandwich < ActiveRecord::Base
  validates :type, presence: true
  attr_accessible :type
  before_create :send_text


  def send_text
  	
  end
end
