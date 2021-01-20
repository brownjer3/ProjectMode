class PhasesController < ApplicationController
    def show
        find_phase
        @projects = @phase.projects # think this is probably where i need to use a scope method
    end

    private

    def find_phase
        @phase = Phase.find_by(id: params[:id])
    end

end
