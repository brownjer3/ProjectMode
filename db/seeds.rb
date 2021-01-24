    Like.destroy_all
    Comment.destroy_all
    Project.destroy_all
    Phase.destroy_all
    User.destroy_all
    Cohort.destroy_all

    cohort_1 = Cohort.create(focus: "Software Engineering", start_date: Date.new(2020, 10, 19), location: "Online", lead_name: "Jenn Hansen", pace: "Full-Time")
    cohort_2 = Cohort.create(focus: "Software Engineering", start_date: Date.new(2020, 11, 11), location: "Online", lead_name: "Nick Doe", pace: "Full-Time")
    cohort_3 = Cohort.create(focus: "Data Science", start_date: Date.new(2021, 01, 29), location: "New York City", lead_name: "Jenn Hansen", pace: "Part-Time")

    phase_1 = Phase.create(name: "CLI")
    phase_2 = Phase.create(name: "Sinatra")
    phase_3 = Phase.create(name: "Rails")
    phase_4 = Phase.create(name: "Javascript")
    phase_5 = Phase.create(name: "Final")
    
    jerry = User.create(first_name: "Jerry", last_name: "Brown", email: "jbtest@test.com", password: "password", cohort: cohort_1)
    joma = User.create(first_name: "Joma", last_name: "Promentilla", password: "password", cohort: cohort_1)
    rebecca = User.create(first_name: "Rebecca", last_name: "Hickson", password: "password", cohort: cohort_1)
    robert = User.create(first_name: "Robert", last_name: "Shilcof", password: "password", cohort: cohort_1)
    natalia = User.create(first_name: "Natalia", last_name: "Ryan", password: "password", cohort: cohort_1)
    dina = User.create(first_name: "Dina", last_name: "Doe", password: "password", cohort: cohort_2)
    guy = User.create(first_name: "Guy", last_name: "Doe", password: "password", cohort: cohort_2)
    random = User.create(first_name: "Random", last_name: "Bot", password: "password", cohort: cohort_3)
    random2 = User.create(first_name: "Random2", last_name: "Bot2", password: "password", cohort: cohort_3)

    jerry_1 = Project.create(name: "Cadence Tunes", owner: jerry, phase: phase_1, blog_link: "https://brownjer3.medium.com/spotifinding-your-ideal-running-playlist-394043d2745a", github_link: "https://github.com/brownjer3/cadence-tunes", youtube_link: "https://www.youtube.com/watch?v=RbdnoimSXjM")
    jerry_2 = Project.create(name: "Drive My Car", owner: jerry, phase: phase_2, blog_link: "https://brownjer3.medium.com/location-location-location-b6ed31ede71e", github_link: "https://github.com/brownjer3/drive-my-car", youtube_link: "https://www.youtube.com/watch?v=biFK6HEu2kg")
    rob_1 = Project.create(name: "Superhero Battles", owner: robert, phase: phase_1, blog_link: "https://medium.com/swlh/from-comics-to-the-command-line-1e13c2c881c9", github_link: "https://github.com/Shilcof/superhero_battles", youtube_link: "https://www.youtube.com/watch?v=E9OqCD03YBI" )
    rob_2 = Project.create(name: "UK Housing Developement", owner: robert, phase: phase_2, blog_link: "https://robert-shilcof.medium.com/getting-the-most-out-of-activerecord-a9ee8688b4dc", github_link: "https://github.com/Shilcof/housing-development-uk", youtube_link: "https://www.youtube.com/watch?v=E9OqCD03YBI")
    joma_1 = Project.create(name: "Hogwarts CLI", owner: joma, phase: phase_1, blog_link: "https://jomapormentilla.medium.com/youre-an-object-harry-3236e5e1d990", github_link: "https://github.com/jomapormentilla/hogwarts-social-network-cli", youtube_link: "https://www.youtube.com/watch?v=TKxciZT7hBQ")
    joma_2 = Project.create(name: "Hogwarts Sinatra", owner: joma, phase: phase_2, blog_link: "https://jomapormentilla.medium.com/on-the-shoulders-of-giants-c4548131f159", github_link: "https://github.com/jomapormentilla/hogwarts-social-network-sinatra", youtube_link: "https://www.youtube.com/watch?v=tz2jQnL7T4I")
    reb_1 = Project.create(name: "Telly-Ho", owner: rebecca, phase: phase_1, blog_link: "https://medium.com/swlh/removing-characters-from-a-string-7a1486959df5", github_link: "https://github.com/rebeccahickson/telly-ho", youtube_link: "https://www.youtube.com/watch?v=tz2jQnL7T4I")
    reb_2 = Project.create(name: "Cowboy Up", owner: rebecca, phase: phase_2, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=tz2jQnL7T4I")
    nat_1 = Project.create(name: "Tap In", owner: natalia, phase: phase_1, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=6XwtTDsoejM")
    dina_1 = Project.create(name: "Tome of Spells", owner: dina, phase: phase_1, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=v_ao8lBC4JM")
    guy_1 = Project.create(name: "Hack Greenville Events", owner: guy, phase: phase_1, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=lgcr_sE4PzA")
    random_1 = Project.create(name: "Hulu", owner: random, phase: phase_1, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=WR9GKQDKHMg")
    random_2 = Project.create(name: "Netflix", owner: random, phase: phase_2, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=SwDXAK7-6SA")
    random_3 = Project.create(name: "Venmo", owner: random, phase: phase_3, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=SKq0Q6avUFo")
    random_4 = Project.create(name: "Headspce", owner: random, phase: phase_4, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=v5I_OTjH9fg")
    random_5 = Project.create(name: "Flappy birds", owner: random, phase: phase_5, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=v5I_OTjH9fg")
    random_6 = Project.create(name: "Tetris", owner: random2, phase: phase_1, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=5sxMqLjTv6k")
    random_7 = Project.create(name: "Tesla Stock Tracker", owner: random2, phase: phase_2, blog_link: "https://medium.com/better-programming/keeping-your-form-in-top-form-26e42fd973b2", github_link: "https://github.com/rebeccahickson/cowboy-up", youtube_link: "https://www.youtube.com/watch?v=ycPr5-27vSI")



    comment_1 = Comment.create(content: "This project is awesome!!", commenter: jerry, project: joma_1)
    comment_2 = Comment.create(content: "Super dope", commenter: joma, project: rob_2)
    comment_3 = Comment.create(content: "Sweet blog! Learned so much", commenter: rebecca, project: jerry_2)

    like_1 = Like.create(project: jerry_1, user: jerry)
    like_2 = Like.create(project: jerry_1, user: joma)
    like_3 = Like.create(project: jerry_1, user: rebecca)
    like_4 = Like.create(project: jerry_1, user: robert)

