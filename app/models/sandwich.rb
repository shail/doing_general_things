class Sandwich < ActiveRecord::Base
  validates :type, presence: true
  attr_accessible :type
  before_create :send_email

  def send_email
  	UserMailer.sandwich_email(self).deliver
  end
end
