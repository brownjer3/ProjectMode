module CohortsHelper

    def format_start_date(date)
        date.strftime("%D")
    end

    def display_cohort_name(cohort)
        "#{format_start_date(cohort.start_date)} #{cohort.pace} #{cohort.focus} (#{cohort.location})"
    end

    def lead_name(cohort)
        cohort.lead_name
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
