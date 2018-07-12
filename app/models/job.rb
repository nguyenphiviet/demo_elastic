class Job < ApplicationRecord
  belongs_to :company
  scope :by_name, ->(keyword){where "name LIKE '%#{keyword}%'"}
  scope :by_description, ->{where "description LIKE '%Representative%'"}
  update_index "jobs#job", :self

  # belong_to associated may need update both Job and Company
  update_index "companies#company" do
    previous_changes["company_id"] || company
  end
end
