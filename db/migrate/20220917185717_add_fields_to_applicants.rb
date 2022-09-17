class AddFieldsToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :language, :string
    add_column :applicants, :zip, :string
    add_column :applicants, :country_of_origin, :string
    add_column :applicants, :profession, :string
    add_column :applicants, :lease, :string
    add_column :applicants, :household_size, :string
  end
end
