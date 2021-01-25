class CommentsController < ApplicationController

    def create
        @comment = Comment.new(content: params[:content], project_id: params[:project_id])
        @comment.commenter = current_user
        if @comment.save
            redirect_to project_path(Project.find(params[:project_id]))
        else
            redirect_to root_path
        end
    end


    private
    def comment_params
        params.require(:comment).permit(:content, :project_id)
    end

end
