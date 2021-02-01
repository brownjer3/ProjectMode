class CohortsController < ApplicationController

    def new
        @cohort = Cohort.new
    end

    def create
    end

    def show
        find_cohort
    end

    private
    def cohort_params
        params.require(:cohort).permit(:focus, :start_date, :pace, :location, :lead_name, :name)
    end

    def find_cohort
        @cohort = Cohort.find_by(id: params[:id])
    end

end
