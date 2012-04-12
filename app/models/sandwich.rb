class Sandwich < ActiveRecord::Base
  belongs_to :user
  validates :sandwich_type, presence: true
  attr_accessible :sandwich_type, :user_id
  before_create :send_email

  def send_email
  	UserMailer.sandwich_email(self).deliver
  end

end
