class DegreePlan < ActiveRecord::Base
  belongs_to :department
  has_many :terms
end
