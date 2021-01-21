module ProjectsHelper

    def youtube_id(project)
        YouTubeAddy.extract_video_id(project.youtube_link)
    end

    def video(project)
        YouTubeAddy.youtube_embed_url(project.youtube_link, 420, 315)
    end

    def like_count(project)
        project.likes.count
    end

    def likers_modal
        link_to "likes", "#likers", class: %w(text-reset text-decoration-none fw-normal), data: {bs_toggle: "modal"}
    end

    def comment_count(project)
        project.comments.count
    end

    def commenters_modal
        link_to "comments", "#commenters", class: %w(text-reset text-decoration-none fw-normal), data: {bs_toggle: "modal"}
    end

end
