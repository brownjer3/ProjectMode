class PhasesController < ApplicationController

    def show
        find_phase
        @projects = @phase.projects
    end

    private

    def find_phase
        @phase = Phase.find_by(id: params[:id])
    end

end
