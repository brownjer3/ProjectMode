module ProjectsHelper

    def youtube_id(project)
        YouTubeAddy.extract_video_id(project.youtube_link)
    end

    def empty_collection_hanlder
        content_tag(:span, class: "row px-5") do 
            "There are no projects here yet! #{add_project_button}".html_safe
        end
    end

    def add_project_button
        link_to "Add yours", new_project_path, class: "btn btn-light p-2"
    end

end
