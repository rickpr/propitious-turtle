class Department < ActiveRecord::Base
  belongs_to :college
  has_many :degree_plans
end
