class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :focus
      t.datetime :start_date
      t.integer :lead_id

      t.timestamps
    end
  end
end
