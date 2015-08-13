class College < ActiveRecord::Base
  belongs_to :year
  has_many :departments
end
