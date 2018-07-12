class Company < ApplicationRecord
  has_many :jobs
  scope :by_name, ->(keyword){where "name Like '%#{keyword}%'"}
end
