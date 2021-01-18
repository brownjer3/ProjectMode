class Phase < ApplicationRecord
    has_many :projects
    has_many :students, through: :projects, source: :owner
end

