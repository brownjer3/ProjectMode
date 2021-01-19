class Project < ApplicationRecord
  belongs_to :phase
  belongs_to :owner, class_name: "User"
  has_many :comments
  has_many :commenters, through: :comments
  has_many :likes
  has_many :likers, through: :likes, source: :user

end

 