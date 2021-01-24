module LikesHelper

    def like_action(project)
        if Like.find_by(project_id: project.id, user_id: current_user.id)
            :delete
        else
            :post
        end
    end

    def like_toggle(project)
        if Like.find_by(project_id: project.id, user_id: current_user.id)
            "text-secondary"
        else
            "text-white"
        end
    end

end