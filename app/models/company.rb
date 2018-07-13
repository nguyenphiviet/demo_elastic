class Company < ApplicationRecord
  has_many :jobs
  scope :by_name, ->(keyword){where "name Like '%#{keyword}%'"}
  update_index "companies#company", :self
  update_index "jobs#job", :jobs
end
