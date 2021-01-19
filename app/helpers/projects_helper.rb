module ProjectsHelper

    def youtube_id(project)
        YouTubeAddy.extract_video_id(project.youtube_link)
    end

    def video(project)
        YouTubeAddy.youtube_embed_url(project.youtube_link, 420, 315)
    end

end
