class AddSalaryToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :salary, :integer, null: false, default: 0
  end
end
