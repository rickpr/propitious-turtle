class CourseTermItem < ActiveRecord::Base
  belongs_to :course
  belongs_to :term_item
end
