module CohortsHelper

    def projects(cohort) # need to figure out how to turn this into a scope method
        cohort.projects.take(5)
    end
end
