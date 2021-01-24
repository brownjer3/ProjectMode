module CohortsHelper

    def projects(cohort) # need to figure out how to turn this into a scope method
        cohort.projects.take(4)
    end

    def display_cohort_name(cohort)
        "#{cohort.start_date} full-time #{cohort.focus}"
    end

    def lead_name(cohort)
        # cohort.lead.name ||= "Jenn"
        "with Jenn"
    end

end
