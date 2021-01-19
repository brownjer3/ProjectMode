class ProjectsController < ApplicationController

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.user = User.find_by(id: session[:user_id])
        if @project.save
            redirect_to project_path(@project)
        else
            #flash message here
            render :new
        end
    end

    def show
        @project = Project.find_by(id: params[:id])
    end

    private
    def project_params
        params.require(:project).permit(:name, :desc, :phase_id, :youtube_link, :github_link, :blog_link)
    end
end
