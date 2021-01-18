module ApplicationHelper

    def title(text)
        content_for :title, text
    end 

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
        !!current_user
    end
end
