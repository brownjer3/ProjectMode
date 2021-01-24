class User < ApplicationRecord
  has_many :projects, foreign_key: "owner_id", class_name: "Project", dependent: :delete_all
  has_many :comments, foreign_key: "commenter_id", class_name: "Comment", dependent: :delete_all
  has_many :likes, dependent: :delete_all
  has_many :liked_projects, through: :likes, source: :project
  # for the student
  belongs_to :cohort, optional: true
  # for the lead
  # has_many :cohorts, foreign_key: "lead_id", class_name: "Cohort"
  has_secure_password 
  has_one_attached :photo

  def self.create_google_user(auth)
    User.create do |u|
      u.uid = auth['uid']
      u.provider = auth['provider']
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(16)
      u.image = auth['info']['image']
    end
  end

end

 