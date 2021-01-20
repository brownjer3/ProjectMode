module ApplicationHelper

    def title(text)
        content_for :title, text
    end 

    def user_link(user)
        link_to user.name, user_path(user), class: %w(nav-link position-absolute top-50 end-0 translate-middle)
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
        !!current_user
    end

end
