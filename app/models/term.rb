class Term < ActiveRecord::Base
  belongs_to :degree_plan
  has_many :term_items
end
