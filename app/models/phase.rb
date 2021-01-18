class Phase < ApplicationRecord
    has_many :projects
    has_many :owners, through: :projects
end

