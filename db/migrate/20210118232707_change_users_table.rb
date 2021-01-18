class ChangeUsersTable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :cohort_id, true
  end
end
