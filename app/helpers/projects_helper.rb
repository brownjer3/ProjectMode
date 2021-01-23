module ProjectsHelper

    def youtube_id(project)
        YouTubeAddy.extract_video_id(project.youtube_link)
    end

    def like_count(project)
        project.likes.count
    end

    def likers_modal(project)
        likes = pluralize(project.likes.count, 'like')
        link_to likes, "#likers#{project.id}", class: %w(text-reset text-decoration-none fw-normal), data: {bs_toggle: "modal"}
    end

    def comment_count(project)
        project.comments.count
    end

    def commenters_modal(project)
        comments = pluralize(project.comments.count, 'comment')
        link_to comments, "#commenters#{project.id}", class: %w(text-reset text-decoration-none fw-normal), data: {bs_toggle: "modal"}
    end

end
