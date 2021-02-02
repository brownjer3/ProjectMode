class ProjectsController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:index]

    def new
        if params[:phase_id] && @phase = Phase.find_by(id: params[:phase_id])
            @project = Project.new(phase_id: params[:phase_id])
        else
            @project = Project.new
        end
    end

    def create
        @project = Project.new(project_params)
        @project.owner = User.find(session[:user_id])
        if @project.save
            redirect_to project_path(@project)
        else
            render :new
        end
    end

    def index
        homepage_login_check!
        @projects = Project.all
        @phases = Phase.all
    end

    def show
        find_project
    end

    def edit
        find_project
        authorize!
    end

    def update
        find_project
        authorize!
        @project.update(project_params)
        redirect_to project_path(@project)
    end

    def destroy
        find_project
        authorize!
        @project.destroy
        redirect_to user_path(User.find_by_id(session[:user_id]))
    end

    def user_comments
        @projects = current_user.commented_projects.uniq
    end

    private
    def project_params
        params.require(:project).permit(:user, :name, :desc, :phase_id, :youtube_link, :github_link, :blog_link)
    end

    def find_project
        @project = Project.find(params[:id])
    end

    def authorize!
        if @project.owner != current_user
            redirect_to root_path
        end
    end

end
