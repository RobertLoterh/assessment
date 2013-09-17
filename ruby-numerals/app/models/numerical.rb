class Numerical < ActiveRecord::Base
  attr_accessible :number
  validates_presence_of :number
  validates_uniqueness_of :number, message: "Please, enter a number"
  validates_length_of :number, minimum:1, maximum: 5
end
