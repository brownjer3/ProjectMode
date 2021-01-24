module LikesHelper

    def like_action(project)
        if @like = Like.find_by(project_id: project.id, user_id: current_user.id)
            :delete
        else
            :post
        end
    end

end