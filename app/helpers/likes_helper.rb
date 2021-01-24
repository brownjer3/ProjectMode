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

    def like_count(project)
        project.likes.count
    end

    def likers_modal(project)
        likes = pluralize(project.likes.count, 'like')
        if project.likes.size == 0 
            likes
        else
            link_to likes, "#likers#{project.id}", class: %w(text-reset text-decoration-none fw-normal), data: {bs_toggle: "modal"}
        end
    end

end