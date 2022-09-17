class CreateApplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :income
      t.string :location
      t.jsonb :problems

      t.timestamps
    end
  end
end
