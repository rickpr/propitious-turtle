class TermItem < ActiveRecord::Base
  belongs_to :term
  has_many :course_term_items
  has_many :courses, through: :course_term_items
end
