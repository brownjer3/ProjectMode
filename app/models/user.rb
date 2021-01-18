class User < ApplicationRecord
  has_many :projects, foreign_key: "owner_id", class_name: "Project"
  has_many :comments, foreign_key: "commenter_id", class_name: "Comment"
  has_many :likes
  has_many :liked_projects, through: :likes, source: :project

  # for the student
  belongs_to :cohort

  
  # for the lead
  # has_many :cohorts, foreign_key: "lead_id", class_name: "Cohort"
  
  has_secure_password 
end

 