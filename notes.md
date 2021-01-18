Project Directory App - Initial Model Notes

User 
*Student
- has_many :projects, foreign_key: "owner_id", class_name: "Project"
- has_many :comments, foreign_key: "commenter_id", class_name: "Comment"
- belongs_to :cohort
- has_many :cohorts, foreign_key: "lead_id"


later----
- has_many :classmates, through: :cohort, source: :students
*Lead
- has_many :students, through: :cohort, source: :students

Attrs= email, password_digest, first_name, last_name, avartar, cohort, lead/type(student,lead,guest)
ForeignKey Attrs = cohort_id
Stretch= lead, location

Project 
- belongs_to :owner, class_name: "User"
- has_many :comments
- has_many :commenters, through: :comments, source: :commenter (dont think this is needed)
- belongs_to :module

Attrs = name, description:text, youtube_link, github_link, blog_link
ForeignKey Attrs = module_id, owner_id

Comment
- belongs_to :commenter, class_name: "User"
- belongs_to :project

Attrs= content:text
ForeignKey attrs = commenter_id, project_id, 

Likes (?) - need to look up Commentable article

Module
has_many :projects
has_many :users, through: :projects

Attrs= name 
ForeignKeys = 

Cohort
- belongs_to :lead, class_name: "User"
- has_many :students, foreign_key: "cohort_id", class_name: "User"

Attrs= start_date, focus
ForeignKeys = lead_id

STRETCH FEATURES
- aminn/lead
- languages (eg project has_many :languages, module belongs_to :language, etc)
- bootcamp_focus (Software Engineering, Data Science, Design, etc)