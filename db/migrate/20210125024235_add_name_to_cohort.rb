class AddNameToCohort < ActiveRecord::Migration[6.0]
  def change
    add_column :cohorts, :name, :string
  end
end
