class AddEmailToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :email, :string
    add_index :companies, :email, unique: true
  end
end
