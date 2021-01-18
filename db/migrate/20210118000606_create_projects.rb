class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :desc
      t.string :youtube_link
      t.string :github_link
      t.string :blog_link
      t.belongs_to :phase, null: false, foreign_key: true
      t.integer :owner_id

      t.timestamps
    end
  end
end
