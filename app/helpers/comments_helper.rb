module CommentsHelper

    def comment_count(project)
        project.comments.count
    end

    def submit_comment_modal(project)
        "#submit_comment#{project.id}"
    end

    def commenters_modal(project)
        comments = pluralize(project.comments.count, 'comment')
        if project.comments.size == 0
            comments
        else
            link_to comments, "#commenters#{project.id}", class: %w(text-reset text-decoration-none fw-normal), data: {bs_toggle: "modal"}
        end
    end

end
