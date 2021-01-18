class Project < ApplicationRecord
  belongs_to :phase
  belongs_to :owner, class_name: "User"
  has_many :comments
  has_many :commenters, through: :comments
end

 