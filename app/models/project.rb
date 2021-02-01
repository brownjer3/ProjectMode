class Project < ApplicationRecord
  belongs_to :phase
  belongs_to :owner, class_name: "User"
  has_many :comments, dependent: :delete_all
  has_many :commenters, through: :comments, source: :commenter
  has_many :likes, dependent: :delete_all
  has_many :likers, through: :likes, source: :user

  validates :name, presence: true
  validates :desc, presence: true
  validates :youtube_link, presence: true
  validate :proper_link

  def proper_link 
    if !youtube_link.include?("youtube")
      errors.add(:youtube_link, "must be a valid link")
    end
  end

  default_scope { order(created_at: :desc) }
  scope :five_most_liked, -> { joins(:likes).group(:id).unscope(:order).order(Arel.sql("COUNT(project_id) DESC")).limit(4)}
  scope :phase, -> (phase_number) {where("phase_id = ?", phase_number).take(4)}
end

 