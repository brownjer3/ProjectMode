    User.destroy_all
    Cohort.destroy_all
    Comment.destroy_all
    Project.destroy_all
    Phase.destroy_all
    Like.destroy_all

    cohort_1 = Cohort.create(focus: "Software Engineering", start_date: Date.today-rand(10000))
    cohort_2 = Cohort.create(focus: "Software Engineering", start_date: Date.today-rand(10000))
    cohort_3 = Cohort.create(focus: "Data Science", start_date: Date.today-rand(10000))

    phase_1 = Phase.create(name: "Phase 1")
    phase_2 = Phase.create(name: "Phase 2")
    phase_3 = Phase.create(name: "Phase 3")
    
    jerry = User.create(name: "Jerry", password: "password", cohort: cohort_1)
    joma = User.create(name: "Joma", password: "password", cohort: cohort_2)
    rebecca = User.create(name: "Rebecca", password: "password", cohort: cohort_1)
    robert = User.create(name: "Robert", password: "password", cohort: cohort_3)

    project_1 = Project.create(name: "PROJECT 1", owner: jerry, phase: phase_1)
    project_2 = Project.create(name: "Another dope proj", owner: joma, phase: phase_2)
    project_3 = Project.create(name: "Sweet Project", owner: joma, phase: phase_2)
    project_4 = Project.create(name: "The best project out there", owner: rebecca, phase: phase_3)
    project_5 = Project.create(name: "Still learning", owner: robert, phase: phase_1)

    comment_1 = Comment.create(content: "This project is awesome!!", commenter: jerry, project: project_1)
    comment_2 = Comment.create(content: "Super dope", commenter: joma, project: project_2)
    comment_3 = Comment.create(content: "Sweet blog! Learned so much", commenter: rebecca, project: project_3)

    like_1 = Like.create(project: project_1, user: jerry)
    like_2 = Like.create(project: project_1, user: joma)
    like_3 = Like.create(project: project_1, user: rebecca)
    like_4 = Like.create(project: project_1, user: robert)

