class User < ApplicationRecord
  has_many :projects, foreign_key: "owner_id", class_name: "Project"
  has_many :comments, foreign_key: "commenter_id", class_name: "Comment"
  has_many :likes
  has_many :liked_projects, through: :likes, source: :project
  # for the student
  belongs_to :cohort, optional: true
  # for the lead
  # has_many :cohorts, foreign_key: "lead_id", class_name: "Cohort"
  has_secure_password 

  def self.create_canvas_user(auth)
    User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(16)
      #u.avatar = auth["extra"]["raw_info"]["avatar_url"]
      #u.cohort = auth["extra"]["raw_info"]["avatar_url"]
      #u.lead = true if auth[]
      #u.uid = auth['uid']
      #u.provider = auth['provider']
    end
  end

end

 