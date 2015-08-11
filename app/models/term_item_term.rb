class TermItemTerm < ActiveRecord::Base
  belongs_to :term
  belongs_to :term_item
end
