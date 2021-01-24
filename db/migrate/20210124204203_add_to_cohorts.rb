class AddToCohorts < ActiveRecord::Migration[6.0]
  def change
    add_column :cohorts, :location, :string
    add_column :cohorts, :lead_name, :string
    add_column :cohorts, :pace, :string
  end
end
