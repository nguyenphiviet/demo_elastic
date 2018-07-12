class Job < ApplicationRecord
  belongs_to :company
  scope :by_name, ->(keyword){where "name LIKE '%#{keyword}%'"}
end
