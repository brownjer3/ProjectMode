class Cohort < ApplicationRecord
  # belongs_to :lead, class_name: "User"
  has_many :students, foreign_key: "cohort_id", class_name: "User"
  has_many :projects, through: :students


end
