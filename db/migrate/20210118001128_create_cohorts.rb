class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :type
      t.datetime :start_date

      t.timestamps
    end
  end
end
