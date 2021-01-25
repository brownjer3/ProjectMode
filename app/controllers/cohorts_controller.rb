class CohortsController < ApplicationController

    def new
        @cohort = Cohort.new
    end

    def create
        @cohort = Cohort.new(cohort_params)
        @cohort.name = "#{@cohort.start_date} #{@cohort.pace} #{@cohort.focus} (#{@cohort.location})"
        @cohort.save
    end

    def show
        find_cohort
    end

    private
    def cohort_params
        params.require(:cohort).permit(:focus, :start_date, :pace, :location, :lead_name, :name)
    end

    def find_cohort
        @cohort = Cohort.find_by(params[:id])
    end

end
