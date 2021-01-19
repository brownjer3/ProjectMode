class AlterUsersForOauth < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.remove :name
      t.string :first_name
      t.string :last_name
      t.string :image
    end
  end
end
