class Comment < ApplicationRecord
  belongs_to :project
  belongs_to :commenter, class_name: "User"
end
