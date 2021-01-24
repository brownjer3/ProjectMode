module ApplicationHelper

    def title(text)
      content_for :title, text
    end 

    def owner_controls(user, project, local)
      if user == current_user && !project.nil?
        render partial: "projects/owner_buttons", locals: {local: project}
      elsif user != current_user && !project.nil?
        render partial: "projects/creator_info", locals: {local: project}
      elsif user == current_user && project.nil?
        render partial: "users/owner_buttons", locals: {local: user}
      end
    end

    #need to figure out where these should live
    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end
  
    def logged_in?
      current_user != nil
    end

    def display_date(date)
      date.strftime("%B %e, %Y")
    end

end
