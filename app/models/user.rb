class User < ApplicationRecord
  has_many :projects, foreign_key: "owner_id", class_name: "Project", dependent: :delete_all
  has_many :comments, foreign_key: "commenter_id", class_name: "Comment", dependent: :delete_all
  has_many :commented_projects, through: :comments, source: :project

  has_many :likes, dependent: :delete_all
  has_many :liked_projects, through: :likes, source: :project
  # for the student
  belongs_to :cohort, optional: true
  # for the lead
  # has_many :cohorts, foreign_key: "lead_id", class_name: "Cohort"
  has_secure_password 
  has_one_attached :photo
  accepts_nested_attributes_for :cohort

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true


  def cohort_attributes=(attributes)
    if attributes.values.all? { |value| !value.blank? }
      self.cohort = Cohort.new(attributes)
      self.cohort.name = "#{attributes[:start_date]} #{attributes[:pace]} #{attributes[:focus]} (#{attributes[:location]}) - #{attributes[:lead_name]}"
      self.cohort.save
    end
  end

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

 