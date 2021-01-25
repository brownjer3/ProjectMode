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
  accepts_nested_attributes_for :cohort, reject_if: proc { |attributes| attributes['focus'].blank? || attributes['start_date'].blank? || attributes['location'].blank? || attributes['pace'].blank? || attributes['lead_name'].blank?}

  def self.create_google_user(auth)
    User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.uid = auth['uid']
      u.provider = auth['provider']
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(16)
      u.image = auth['info']['image']
    end
  end

  def has_projects?
    self.projects.size == 0
  end

end

 