class Job < ApplicationRecord
  belongs_to :company
  update_index "jobs#job", :self

  # belong_to associated may need update both Job and Company
  update_index "companies#company" do
    previous_changes["company_id"] || company
  end

  def self.search_elastic query
    JobsIndex::Job.query(
      multi_match: {
        query: query,
        type: "phrase_prefix",
        fields: ["name", "description", "company.name", "company.address", "company.email"]
      }
    )
  end

  def self.get_all
    JobsIndex::Job.query(
      match_all: {}
    )
  end
end
