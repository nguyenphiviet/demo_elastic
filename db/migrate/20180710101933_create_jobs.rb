class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.references :company, foreign_key: true
    end
  end
end
