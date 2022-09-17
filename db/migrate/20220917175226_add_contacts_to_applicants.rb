class AddContactsToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :phone, :string
    add_column :applicants, :email, :string
    add_column :applicants, :other_contact, :string
  end
end
