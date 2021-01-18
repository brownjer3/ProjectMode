class User < ApplicationRecord
  has_many :projects, foreign_key: "owner_id", class_name: "Project"
  has_many :comments, foreign_key: "commenter_id", class_name: "Comment"
  has_many :cohorts, foreign_key: "lead_id", class_name: "Cohort"
  belongs_to :cohort

  has_secure_password
end

 