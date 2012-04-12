class Sandwich < ActiveRecord::Base
  validates :type, presence: true
  attr_accessible :type
end
