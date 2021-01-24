class CohortsController < ApplicationController

    def show
        find_cohort
    end

    private
    def find_cohort
        @cohort = Cohort.find_by(params[:id])
    end

end
