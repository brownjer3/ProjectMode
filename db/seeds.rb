    Like.destroy_all
    Comment.destroy_all
    Project.destroy_all
    Phase.destroy_all
    User.destroy_all
    Cohort.destroy_all

    cohort_1 = Cohort.create(focus: "Software Engineering", start_date: Date.today-rand(10000))
    cohort_2 = Cohort.create(focus: "Software Engineering", start_date: Date.today-rand(10000))
    cohort_3 = Cohort.create(focus: "Data Science", start_date: Date.today-rand(10000))

    phase_1 = Phase.create(name: "CLI")
    phase_2 = Phase.create(name: "Sinatra")
    phase_3 = Phase.create(name: "Rails")
    phase_4 = Phase.create(name: "Rails & Javascript")
    phase_5 = Phase.create(name: "Final")
    
    jerry = User.create(first_name: "Jerry", password: "password", cohort: cohort_1)
    joma = User.create(first_name: "Joma", password: "password", cohort: cohort_2)
    rebecca = User.create(first_name: "Rebecca", password: "password", cohort: cohort_1)
    robert = User.create(first_name: "Robert", password: "password", cohort: cohort_3)

    jerry_1 = Project.create(name: "Cadence Tunes", owner: jerry, phase: phase_1, blog_link: "https://brownjer3.medium.com/spotifinding-your-ideal-running-playlist-394043d2745a", github_link: "https://github.com/brownjer3/cadence-tunes", youtube_link: "https://www.youtube.com/watch?v=RbdnoimSXjM")
    jerry_2 = Project.create(name: "Drive My Car", owner: jerry, phase: phase_2, blog_link: "https://brownjer3.medium.com/location-location-location-b6ed31ede71e", github_link: "https://github.com/brownjer3/drive-my-car", youtube_link: "https://www.youtube.com/watch?v=biFK6HEu2kg")
    rob_1 = Project.create(name: "Superhero Battles", owner: robert, phase: phase_1, blog_link: "https://medium.com/swlh/from-comics-to-the-command-line-1e13c2c881c9", github_link: "https://github.com/Shilcof/superhero_battles", youtube_link: "https://www.youtube.com/watch?v=E9OqCD03YBI" )
    rob_2 = Project.create(name: "UK Housing Developement", owner: robert, phase: phase_2, blog_link: "https://robert-shilcof.medium.com/getting-the-most-out-of-activerecord-a9ee8688b4dc", github_link: "https://github.com/Shilcof/housing-development-uk", youtube_link: "https://www.youtube.com/watch?v=E9OqCD03YBI")
    joma_1 = Project.create(name: "Hogwarts CLI", owner: joma, phase: phase_1, blog_link: "https://jomapormentilla.medium.com/youre-an-object-harry-3236e5e1d990", github_link: "https://github.com/jomapormentilla/hogwarts-social-network-cli", youtube_link: "https://www.youtube.com/watch?v=TKxciZT7hBQ")
    joma_2 = Project.create(name: "Hogwarts Sinatra", owner: joma, phase: phase_2, blog_link: "https://jomapormentilla.medium.com/on-the-shoulders-of-giants-c4548131f159", github_link: "https://github.com/jomapormentilla/hogwarts-social-network-sinatra", youtube_link: "https://www.youtube.com/watch?v=tz2jQnL7T4I")
    reb_1 = Project.create(name: "Telly-Ho", owner: rebecca, phase: phase_1, blog_link: "https://medium.com/swlh/removing-characters-from-a-string-7a1486959df5", github_link: "https://github.com/rebeccahickson/telly-ho", youtube_link: "https://www.youtube.com/watch?v=tz2jQnL7T4I")
    reb_2 = Project.create(name: "Cowboy Up", owner: rebecca, phase: phase_2, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=tz2jQnL7T4I")
    

    comment_1 = Comment.create(content: "This project is awesome!!", commenter: jerry, project: joma_1)
    comment_2 = Comment.create(content: "Super dope", commenter: joma, project: rob_2)
    comment_3 = Comment.create(content: "Sweet blog! Learned so much", commenter: rebecca, project: jerry_2)

    like_1 = Like.create(project: jerry_1, user: jerry)
    like_2 = Like.create(project: jerry_1, user: joma)
    like_3 = Like.create(project: jerry_1, user: rebecca)
    like_4 = Like.create(project: jerry_1, user: robert)

