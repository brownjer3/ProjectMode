class LikesController < ApplicationController

    def create
        @like = Like.new(project_id: params[:project_id])
        @like.user = current_user
        if @like.save
            redirect_to project_path(@like.project)
        else
            redirect_to '/'
        end
    end


    private
    def like_params
        params.require(:like).permit(:project_id)
    end

end
