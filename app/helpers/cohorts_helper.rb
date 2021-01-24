module CohortsHelper

    def projects(cohort) # need to figure out how to turn this into a scope method
        cohort.projects.take(4)
    end

    def display_cohort_name(cohort)
        "#{cohort.start_date} full-time #{cohort.focus}"
    end

    def lead_name(cohort)
        # cohort.lead.name ||= "Jenn"
        "with Jenn Hansen"
    end

    def cohort_paces
        ["Full-Time", "Part-Time", "Self-Paced"]
    end

    def cohort_locations
        ["Online", "Austin", "Chicago", "Denver", "Houston", "New York", "San Francisco", "Seattle", "Washington, D.C."]
    end

    def cohort_focuses
        ["Software Engineering", "Data Science", "Cybersecurity Analytics", "Cybersecurity Engineering"]
    end

end
