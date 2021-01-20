class ProjectsController < ApplicationController

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.owner = User.find_by(id: session[:user_id])
        if @project.save
            redirect_to project_path(@project)
        else
            #flash message here
            render :new
        end
    end

    def index
        @projects = Project.all
    end

    def show
        find_project
    end

    def edit
        find_project
    end

    def update #add validation check here
        find_project
        @project.update(project_params)
        redirect_to project_path(@project)
    end

    def destroy
        find_project.destroy
        redirect_to user_path(User.find_by_id(session[:user_id]))
    end

    private
    def find_project #could make this a before action for most actions in this controller
        @project = Project.find_by(id: params[:id])
    end

    def project_params
        params.require(:project).permit(:user, :name, :desc, :phase_id, :youtube_link, :github_link, :blog_link)
    end
end
