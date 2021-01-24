class LikesController < ApplicationController

    def create
        @like = Like.new(project_id: params[:project_id])
        @like.user = current_user
        if @like.save
            redirect_back(fallback_location: root_path)
        else
            #error?
            redirect_to '/'
        end
    end

    def destroy
        @like = Like.find_by(project_id: params[:project_id], user_id: current_user.id)
        @like.destroy
        redirect_back(fallback_location: root_path)
    end


    private
    def like_params
        params.require(:like).permit(:project_id)
    end

end
