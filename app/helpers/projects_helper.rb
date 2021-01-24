module ProjectsHelper

    def youtube_id(project)
        YouTubeAddy.extract_video_id(project.youtube_link)
    end


end
